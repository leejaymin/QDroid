.class public Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;
.super Landroid/app/ListActivity;
.source "ListPickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, items:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 28
    .local v1, myIntent:Landroid/content/Intent;
    sget-object v2, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;->setResult(I)V

    .line 34
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;->finish()V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "lv"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, resultIntent:Landroid/content/Intent;
    sget-object v2, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;->finish()V

    .line 45
    return-void
.end method
