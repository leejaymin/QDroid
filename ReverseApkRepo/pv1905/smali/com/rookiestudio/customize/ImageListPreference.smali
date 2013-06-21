.class public Lcom/rookiestudio/customize/ImageListPreference;
.super Landroid/preference/DialogPreference;
.source "ImageListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/customize/ImageListPreference$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/DialogPreference;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private imageResources:[I

.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rookiestudio/customize/ImageListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string v0, "0"

    iput-object v0, p0, Lcom/rookiestudio/customize/ImageListPreference;->mValue:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/customize/ImageListPreference;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mClickedDialogEntryIndex:I

    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rookiestudio/customize/ImageListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/ImageListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 92
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_2

    .line 99
    .end local v0           #i:I
    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0

    .line 94
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getValueIndex()I

    move-result v0

    .line 88
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getImageResources()[I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/rookiestudio/customize/ImageListPreference;->imageResources:[I

    return-object v0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "defaultReturnValue"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/rookiestudio/customize/ImageListPreference;->getPersistedInt(I)I

    move-result v0

    .line 160
    .local v0, intValue:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 162
    .end local v0           #intValue:I
    .end local p1
    :cond_0
    return-object p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/rookiestudio/customize/ImageListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 136
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/rookiestudio/customize/ImageListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/ImageListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/ImageListPreference;->setValue(Ljava/lang/String;)V

    .line 143
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 147
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/rookiestudio/customize/ImageListPreference;->mClickedDialogEntryIndex:I

    .line 235
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 8
    .parameter "builder"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 110
    iget-object v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 112
    const-string v2, "ListPreference requires an entries array and an entryValues array."

    .line 111
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getValueIndex()I

    move-result v1

    iput v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mClickedDialogEntryIndex:I

    .line 116
    iget-object v1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/rookiestudio/customize/ImageListPreference;->mClickedDialogEntryIndex:I

    .line 117
    new-instance v3, Lcom/rookiestudio/customize/ImageListPreference$1;

    invoke-direct {v3, p0}, Lcom/rookiestudio/customize/ImageListPreference$1;-><init>(Lcom/rookiestudio/customize/ImageListPreference;)V

    .line 116
    invoke-virtual {p1, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    new-instance v0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;

    .line 124
    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001c

    .line 125
    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 126
    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getImageResources()[I

    move-result-object v5

    iget v6, p0, Lcom/rookiestudio/customize/ImageListPreference;->mClickedDialogEntryIndex:I

    move-object v7, p0

    .line 123
    invoke-direct/range {v0 .. v7}, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IILandroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 128
    .local v0, listAdapter:Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 130
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/rookiestudio/customize/ImageListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 199
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 196
    check-cast v0, Lcom/rookiestudio/customize/ImageListPreference$SavedState;

    .line 197
    .local v0, myState:Lcom/rookiestudio/customize/ImageListPreference$SavedState;
    invoke-virtual {v0}, Lcom/rookiestudio/customize/ImageListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 198
    iget-object v1, v0, Lcom/rookiestudio/customize/ImageListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/rookiestudio/customize/ImageListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 178
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImageListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 183
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/rookiestudio/customize/ImageListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/rookiestudio/customize/ImageListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 184
    .local v0, myState:Lcom/rookiestudio/customize/ImageListPreference$SavedState;
    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rookiestudio/customize/ImageListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 185
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rookiestudio/customize/ImageListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/ImageListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/rookiestudio/customize/ImageListPreference;->setValue(Ljava/lang/String;)V

    .line 154
    return-void

    .line 153
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/ImageListPreference;->persistInt(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .parameter "entriesResId"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/ImageListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 34
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .parameter "entryValuesResId"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImageListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/ImageListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entryValues"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 46
    return-void
.end method

.method public setImageResources([I)V
    .locals 3
    .parameter "imageResources"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/rookiestudio/customize/ImageListPreference;->imageResources:[I

    .line 59
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 60
    .local v0, ValuesList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/ImageListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 64
    return-void

    .line 61
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/rookiestudio/customize/ImageListPreference;->mValue:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/rookiestudio/customize/ImageListPreference;->persistString(Ljava/lang/String;)Z

    .line 74
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/rookiestudio/customize/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/ImageListPreference;->setValue(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
