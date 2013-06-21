.class final Lcom/redlynx/drawrace2/DrawRace2TextInput$1;
.super Ljava/lang/Object;
.source "DrawRace2TextInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2TextInput;->open()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 148
    new-instance v0, Landroid/widget/EditText;

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$100()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$002(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 149
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$000()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$200()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 150
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$000()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$000()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 152
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$500()I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$000()Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v5, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$500()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 156
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$100()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$602(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$600()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$600()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$000()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$600()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/redlynx/drawrace2/DrawRace2TextInput$1$1;

    invoke-direct {v2, p0}, Lcom/redlynx/drawrace2/DrawRace2TextInput$1$1;-><init>(Lcom/redlynx/drawrace2/DrawRace2TextInput$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$600()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/redlynx/drawrace2/DrawRace2TextInput$1$2;

    invoke-direct {v2, p0}, Lcom/redlynx/drawrace2/DrawRace2TextInput$1$2;-><init>(Lcom/redlynx/drawrace2/DrawRace2TextInput$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$600()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$600()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2TextInput$1$3;

    invoke-direct {v1, p0}, Lcom/redlynx/drawrace2/DrawRace2TextInput$1$3;-><init>(Lcom/redlynx/drawrace2/DrawRace2TextInput$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->access$600()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 183
    return-void
.end method
