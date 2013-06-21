.class public Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;
.super Landroid/app/Activity;
.source "THardwareKeyManagement.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private AddButton:Landroid/widget/Button;

.field private HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

.field private MainListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    .line 48
    return-void
.end method

.method public static AddKey(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)V
    .locals 9
    .parameter "Parent"

    .prologue
    .line 151
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v4, alert:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a014a

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 153
    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 155
    .local v5, inflaterDl:Landroid/view/LayoutInflater;
    const v7, 0x7f03000e

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 157
    .local v6, layout:Landroid/widget/LinearLayout;
    const v7, 0x7f0c0032

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 158
    .local v3, KeyCodeEdit:Landroid/widget/EditText;
    new-instance v7, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$2;

    invoke-direct {v7, v3}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$2;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 167
    const v7, 0x7f0c0033

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 168
    .local v1, DescriptionEdit:Landroid/widget/EditText;
    const v7, 0x7f0c0034

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 169
    .local v0, ActionSpinner:Landroid/widget/Spinner;
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 170
    const v7, 0x1090008

    sget-object v8, Lcom/rookiestudio/perfectviewer/Config;->FunctionListStr:Ljava/util/List;

    .line 169
    invoke-direct {v2, p0, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 171
    .local v2, FunctionItems:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x1090009

    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 174
    const v7, 0x104000a

    new-instance v8, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;

    invoke-direct {v8, v3, v1, v0, p0}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    const/high16 v7, 0x104

    new-instance v8, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$4;

    invoke-direct {v8}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$4;-><init>()V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 196
    return-void
.end method

.method public static CreateHardwareKeyManagement(Landroid/app/Activity;)V
    .locals 2
    .parameter "Parent"

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, aHardwareKeyManagement:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public static EditKey(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;Lcom/rookiestudio/baseclass/THardwareKey;)V
    .locals 11
    .parameter "Parent"
    .parameter "aKey"

    .prologue
    .line 200
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v7, alert:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0a014e

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 202
    const v0, 0x108009b

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 204
    .local v8, inflaterDl:Landroid/view/LayoutInflater;
    const v0, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 206
    .local v9, layout:Landroid/widget/LinearLayout;
    const v0, 0x7f0c0032

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 207
    .local v1, KeyCodeEdit:Landroid/widget/EditText;
    new-instance v0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$5;

    invoke-direct {v0, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$5;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 216
    const v0, 0x7f0c0033

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 217
    .local v2, DescriptionEdit:Landroid/widget/EditText;
    const v0, 0x7f0c0034

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 218
    .local v4, ActionSpinner:Landroid/widget/Spinner;
    new-instance v6, Landroid/widget/ArrayAdapter;

    .line 219
    const v0, 0x1090008

    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->FunctionListStr:Ljava/util/List;

    .line 218
    invoke-direct {v6, p0, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 220
    .local v6, FunctionItems:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 221
    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 222
    iget v0, p1, Lcom/rookiestudio/baseclass/THardwareKey;->KeyCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p1, Lcom/rookiestudio/baseclass/THardwareKey;->Description:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget v0, p1, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 225
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 226
    const v10, 0x104000a

    new-instance v0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/rookiestudio/baseclass/THardwareKey;Landroid/widget/Spinner;Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)V

    invoke-virtual {v7, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    const/high16 v0, 0x104

    new-instance v3, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$7;

    invoke-direct {v3}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$7;-><init>()V

    invoke-virtual {v7, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 251
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)Lcom/rookiestudio/perfectviewer/THardwareKeyList;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c004f

    if-ne v0, v1, :cond_0

    .line 137
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->AddKey(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f030018

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->setContentView(I)V

    .line 59
    const/4 v0, 0x2

    .line 60
    .local v0, orientation2:I
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v1}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    .line 61
    const v1, 0x7f0c004f

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->AddButton:Landroid/widget/Button;

    .line 62
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->AddButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f0c0022

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->MainListView:Landroid/widget/ListView;

    .line 64
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->MainListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->MainListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 66
    new-instance v1, Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    .line 67
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->Assign(Lcom/rookiestudio/perfectviewer/THardwareKeyList;)V

    .line 68
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->MainListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 144
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v0, p3}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->getItem(I)Lcom/rookiestudio/baseclass/THardwareKey;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->EditKey(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;Lcom/rookiestudio/baseclass/THardwareKey;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->onPopupMenu(Landroid/view/View;I)V

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 73
    const-string v1, "perfect_viewer_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, settings:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->Assign(Lcom/rookiestudio/perfectviewer/THardwareKeyList;)V

    .line 75
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v1, v0}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->SaveSetting(Landroid/content/SharedPreferences;)V

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 77
    return-void
.end method

.method public onPopupMenu(Landroid/view/View;I)V
    .locals 11
    .parameter "arg1"
    .parameter "ItemIndex"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 96
    new-array v2, v10, [Ljava/lang/CharSequence;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x7f0a014e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    const/4 v6, 0x1

    .line 97
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a014b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x2

    .line 98
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a0090

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 99
    .local v2, MenuItemList:[Ljava/lang/CharSequence;
    new-array v1, v10, [I

    fill-array-data v1, :array_0

    .line 102
    .local v1, MenuImageList:[I
    new-instance v4, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;

    const v6, 0x7f03001b

    invoke-direct {v4, p0, v6, v2, v1}, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[I)V

    .line 103
    .local v4, PopupMenu:Lcom/rookiestudio/customize/PopupMenuArrayAdapter;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v5, alert:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v6, p2}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->getItem(I)Lcom/rookiestudio/baseclass/THardwareKey;

    move-result-object v6

    iget-object v6, v6, Lcom/rookiestudio/baseclass/THardwareKey;->Description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v6, 0x108009b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 106
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v3, MenuListView:Landroid/widget/ListView;
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 108
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 109
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x1080012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 113
    .local v0, MenuDialog:Landroid/app/AlertDialog;
    new-instance v6, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;

    invoke-direct {v6, p0, v0, p2}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;-><init>(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;Landroid/app/AlertDialog;I)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    return-void

    .line 99
    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
    .end array-data
.end method
