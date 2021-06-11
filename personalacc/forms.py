from authnapp.models import User
from crispy_forms.helper import FormHelper
from django import forms

from authnapp.forms import BootstrapStylesMixins
from mainapp.models import CurrentCounter, HouseCurrent, HouseHistory, Privileges, Recalculations, Services, Subsidies

class MultipleForm(forms.Form):
    """Добавляем клас Мульти формности, идентификация форм будет по скрытому полю action"""
    action = forms.CharField(max_length=60, widget=forms.HiddenInput())

class CurrentCounterForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # self.fields['user'].queryset = User.objects.filter(id=kwargs['initial']['user'])
        test = self.initial.get('user')
        self.fields['user'].queryset = User.objects.filter(id=self.initial.get('user'))
        for field_name, field in self.fields.items():
            field.widget.attrs["class"] = "form-control"
        self.helper = FormHelper()
        self.helper.form_show_labels = False

    class Meta:
        model = CurrentCounter
        exclude = ("period", "electric_day", "electric_night", "electric_single", "created", "updated")


class HomeCurrentCounterForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field_name, field in self.fields.items():
            field.widget.attrs["class"] = "form-control"
        self.helper = FormHelper()
        self.helper.form_show_labels = False

    class Meta:
        model = HouseCurrent
        exclude = ("electric_day", "electric_night", "period", "created", "updated")


class HomeHistoryCounterForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field_name, field in self.fields.items():
            field.widget.attrs["class"] = "form-control"
        self.helper = FormHelper()
        # self.helper.form_show_labels = False

    class Meta:
        model = HouseHistory
        exclude = ("period", "created", "updated")


class RecalculationsForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(RecalculationsForm, self).__init__(*args, **kwargs)
        #Отправляем фильтрованные данные в форму
        self.fields['service'].queryset = Services.objects.filter(const=False)
        self.fields['user'].queryset = User.objects.filter(is_staff=False)
        for field_name, field in self.fields.items():
            field.widget.attrs["class"] = "form-control"
        self.helper = FormHelper()
        self.helper.form_show_labels = False

    class Meta:
        model = Recalculations
        exclude = ("period", "created", "updated")


class SubsidiesForm(forms.ModelForm):
    field_name = ["user", "service", "sale", "desc"]
    class Meta:
            model = Subsidies
            exclude = ("created", "updated")

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['service'].queryset = Services.objects.filter(const=False)
        self.fields['user'].queryset = User.objects.filter(is_staff=False)
        self.helper = FormHelper()
        self.helper.form_show_labels = False


class PrivilegesForm(BootstrapStylesMixins, forms.ModelForm):
    field_name = ["user", "service", "sale", "desc"]
    class Meta:
        model = Privileges
        exclude = ("is_active", "created", "updated")

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['service'].queryset = Services.objects.filter(const=False)
        self.fields['user'].queryset = User.objects.filter(is_staff=False)
        self.helper = FormHelper()
        self.helper.form_show_labels = False


    