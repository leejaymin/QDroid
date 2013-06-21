.class public Lcom/redlynx/drawrace2/DrawRace2TextInput;
.super Ljava/lang/Object;
.source "DrawRace2TextInput.java"


# static fields
.field private static final TEXT_CANCEL:Ljava/lang/String; = "Cancel"

.field private static final TEXT_OK:Ljava/lang/String; = "Ok"

.field private static smActivity:Landroid/app/Activity;

.field private static smAlertDialog:Landroid/app/AlertDialog$Builder;

.field private static smCommandCancelText:Ljava/lang/String;

.field private static smCommandOkText:Ljava/lang/String;

.field private static smEditText:Ljava/lang/String;

.field private static smInputField:Landroid/widget/EditText;

.field private static smMaxSize:I

.field private static smPlaceholderText:Ljava/lang/String;

.field private static smTitleText:Ljava/lang/String;

.field private static smType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, ""

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smTitleText:Ljava/lang/String;

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smPlaceholderText:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smEditText:Ljava/lang/String;

    .line 19
    const-string v0, "Ok"

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smCommandOkText:Ljava/lang/String;

    .line 20
    const-string v0, "Cancel"

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smCommandCancelText:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smMaxSize:I

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smInputField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smInputField:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 11
    sget v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smType:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smEditText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smPlaceholderText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 11
    sget v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smMaxSize:I

    return v0
.end method

.method static synthetic access$600()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smAlertDialog:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smAlertDialog:Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smTitleText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smCommandOkText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smCommandCancelText:Ljava/lang/String;

    return-object v0
.end method

.method public static getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smEditText:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 30
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smActivity:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method public static isOpen()Z
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smAlertDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native nameEntered()V
.end method

.method public static onFormClosed(Z)V
    .locals 2
    .parameter "positiveAction"

    .prologue
    const/4 v1, 0x0

    .line 199
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smInputField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smAlertDialog:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smInputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->cancelLongPress()V

    .line 202
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smInputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 203
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 204
    if-eqz p0, :cond_2

    .line 205
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smInputField:Landroid/widget/EditText;

    if-nez v0, :cond_4

    .line 206
    sput-object v1, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smEditText:Ljava/lang/String;

    .line 210
    :cond_2
    :goto_1
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smEditText:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 211
    const-string v0, ""

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smEditText:Ljava/lang/String;

    .line 212
    :cond_3
    sput-object v1, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smInputField:Landroid/widget/EditText;

    .line 213
    sput-object v1, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->nameEntered()V

    goto :goto_0

    .line 208
    :cond_4
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smInputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smEditText:Ljava/lang/String;

    goto :goto_1
.end method

.method public static open()Z
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :cond_0
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smActivity:Landroid/app/Activity;

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2TextInput$1;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2TextInput$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public static openPlayerNameInput(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "title"
    .parameter "text"
    .parameter "maxsize"

    .prologue
    .line 117
    invoke-static {p0}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->setTitle(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->setPlaceholderText(Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->setText(Ljava/lang/String;)V

    .line 120
    invoke-static {p2}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->setMaxSize(I)V

    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->setType(I)V

    .line 122
    const-string v0, "Ok"

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->setCommandOK(Ljava/lang/String;)V

    .line 123
    const-string v0, "Cancel"

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->setCommandCancel(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->open()Z

    .line 125
    return-void
.end method

.method public static setCommandCancel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 82
    if-eqz p0, :cond_0

    .line 83
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smCommandCancelText:Ljava/lang/String;

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "Cancel"

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smCommandCancelText:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setCommandOK(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 75
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smCommandOkText:Ljava/lang/String;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v0, "Ok"

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smCommandOkText:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setMaxSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 95
    sput p0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smMaxSize:I

    .line 96
    return-void
.end method

.method public static setPlaceholderText(Ljava/lang/String;)V
    .locals 1
    .parameter "placeholder"

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 54
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smPlaceholderText:Ljava/lang/String;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smPlaceholderText:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smEditText:Ljava/lang/String;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smEditText:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 40
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smTitleText:Ljava/lang/String;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smTitleText:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setType(I)V
    .locals 0
    .parameter "newType"

    .prologue
    .line 104
    sput p0, Lcom/redlynx/drawrace2/DrawRace2TextInput;->smType:I

    .line 105
    return-void
.end method
