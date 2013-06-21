.class public Lcom/kms/additional/gui/SendCommandSettingsActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/kms/additional/gui/SendCommandSettingsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->c()Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/kms/additional/gui/SendCommandSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->d()V

    return-void
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    const v0, 0x7f0b0131

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->showDialog(I)V

    move v0, v2

    .line 99
    :goto_0
    return v0

    .line 94
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 96
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->showDialog(I)V

    move v0, v2

    .line 97
    goto :goto_0

    :cond_3
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 130
    const v0, 0x7f0b0131

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/kavsdk/shared/SdkUtils;->getPasswordHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/kavsdk/shared/SdkUtils;->decodeBase64jni(Ljava/lang/String;)[B

    move-result-object v0

    .line 134
    invoke-static {v0}, Lfp;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    iget v3, p0, Lcom/kms/additional/gui/SendCommandSettingsActivity;->a:I

    packed-switch v3, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 141
    :pswitch_0
    const-string v3, "block:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 144
    :pswitch_1
    const-string v3, "clean:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 147
    :pswitch_2
    const-string v3, "find:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 150
    :pswitch_3
    const-string v3, "hide:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 153
    :pswitch_4
    const-string v3, "fullreset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 167
    const v0, 0x7f060023

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 36
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03004f

    invoke-virtual {p0, v0, v1}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->a(II)V

    .line 38
    invoke-virtual {p0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 39
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    invoke-virtual {p0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 42
    invoke-virtual {p0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "command"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kms/additional/gui/SendCommandSettingsActivity;->a:I

    .line 43
    iget v0, p0, Lcom/kms/additional/gui/SendCommandSettingsActivity;->a:I

    packed-switch v0, :pswitch_data_0

    .line 60
    invoke-virtual {p0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->finish()V

    .line 62
    :goto_0
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LaT;

    invoke-direct {v1, p0}, LaT;-><init>(Lcom/kms/additional/gui/SendCommandSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f0b0135

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LaU;

    invoke-direct {v1, p0}, LaU;-><init>(Lcom/kms/additional/gui/SendCommandSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void

    .line 45
    :pswitch_0
    const v0, 0x7f0801c4

    move v1, v0

    .line 46
    goto :goto_0

    .line 48
    :pswitch_1
    const v0, 0x7f0801c5

    move v1, v0

    .line 49
    goto :goto_0

    .line 51
    :pswitch_2
    const v0, 0x7f0801c6

    move v1, v0

    .line 52
    goto :goto_0

    .line 54
    :pswitch_3
    const v0, 0x7f0801c7

    move v1, v0

    .line 55
    goto :goto_0

    .line 57
    :pswitch_4
    const v0, 0x7f0802d0

    move v1, v0

    .line 58
    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0801cd

    const v1, 0x7f0801ca

    .line 105
    packed-switch p1, :pswitch_data_0

    .line 126
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_1
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f0801cc

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
