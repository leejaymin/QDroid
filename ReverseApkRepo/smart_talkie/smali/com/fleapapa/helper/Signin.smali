.class public Lcom/fleapapa/helper/Signin;
.super Landroid/app/Activity;
.source "Signin.java"


# static fields
.field public static final GUEST:Ljava/lang/String; = "guest"

.field public static final Unknown:Ljava/lang/String; = "[unknown]"

.field public static final WHO:Ljava/lang/String; = "Signin"

.field static noGuest:Z


# instance fields
.field eCity:Landroid/widget/EditText;

.field eMail:Landroid/widget/EditText;

.field eName:Landroid/widget/EditText;

.field ePswd:Landroid/widget/EditText;

.field eUser:Landroid/widget/EditText;

.field flea:Lcom/fleapapa/helper/Flea;

.field force_signup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fleapapa/helper/Signin;->noGuest:Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fleapapa/helper/Signin;->force_signup:Z

    .line 22
    return-void
.end method

.method static sign_in_out(Landroid/app/Activity;ZI)V
    .locals 2
    .parameter "activity"
    .parameter "signIn"
    .parameter "forResult"

    .prologue
    .line 245
    sget v0, Lcom/fleapapa/util/My;->uid:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 246
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fleapapa/helper/Signin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-static {}, Lcom/fleapapa/helper/Signin;->signout()V

    goto :goto_0
.end method

.method static signout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    sget v0, Lcom/fleapapa/util/My;->uid:I

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v0, v2, v3}, Lcom/fleapapa/helper/CallPapa;->hello(ZZ)V

    .line 240
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "uid"

    aput-object v1, v0, v2

    sput v2, Lcom/fleapapa/util/My;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f0600b7

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method goodEmail(Ljava/lang/String;)Z
    .locals 1
    .parameter "email"

    .prologue
    .line 168
    const-string v0, "(?i)\\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const v12, 0x7f080138

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v6, "Signin.onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 34
    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/Signin;->requestWindowFeature(I)Z

    .line 35
    const v5, 0x7f03001e

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->setContentView(I)V

    .line 36
    const v5, 0x7f060008

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->setTitle(I)V

    .line 37
    const v5, 0x7f080132

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0600b5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 39
    const v5, 0x7f080133

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/fleapapa/helper/Signin;->eUser:Landroid/widget/EditText;

    .line 40
    const v5, 0x7f080134

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/fleapapa/helper/Signin;->ePswd:Landroid/widget/EditText;

    .line 41
    const v5, 0x7f080135

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/fleapapa/helper/Signin;->eName:Landroid/widget/EditText;

    .line 42
    const v5, 0x7f080137

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/fleapapa/helper/Signin;->eCity:Landroid/widget/EditText;

    .line 43
    const v5, 0x7f080139

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/fleapapa/helper/Signin;->eMail:Landroid/widget/EditText;

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, revisit:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uinfo-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, uinfo:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 48
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, tk:[Ljava/lang/String;
    array-length v5, v3

    if-lez v5, :cond_0

    aget-object v5, v3, v10

    sput-object v5, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    .line 50
    :cond_0
    array-length v5, v3

    if-le v5, v11, :cond_1

    aget-object v5, v3, v11

    sput-object v5, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    .line 51
    :cond_1
    array-length v5, v3

    if-le v5, v8, :cond_2

    aget-object v5, v3, v8

    sput-object v5, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    .line 52
    :cond_2
    array-length v5, v3

    if-le v5, v8, :cond_3

    const/4 v1, 0x1

    .line 56
    .end local v3           #tk:[Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/fleapapa/util/My;->bootstrapHours()J

    move-result-wide v5

    const-wide/16 v7, 0xa8

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    .line 59
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-direct {v0, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 60
    .local v0, r:Ljava/util/Random;
    sget-object v5, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    .line 62
    :cond_4
    sget-object v5, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    sput-object v5, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    .line 63
    sget-object v5, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    sput-object v5, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    .line 64
    const-string v5, "[unknown]"

    sput-object v5, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    .line 65
    iput-boolean v11, p0, Lcom/fleapapa/helper/Signin;->force_signup:Z

    .line 67
    .end local v0           #r:Ljava/util/Random;
    :cond_5
    iget-object v5, p0, Lcom/fleapapa/helper/Signin;->eUser:Landroid/widget/EditText;

    sget-object v6, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v5, p0, Lcom/fleapapa/helper/Signin;->ePswd:Landroid/widget/EditText;

    sget-object v6, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v5, p0, Lcom/fleapapa/helper/Signin;->eName:Landroid/widget/EditText;

    sget-object v6, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v5, p0, Lcom/fleapapa/helper/Signin;->eCity:Landroid/widget/EditText;

    sget-object v6, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v5, p0, Lcom/fleapapa/helper/Signin;->eMail:Landroid/widget/EditText;

    sget-object v6, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    invoke-static {v6}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@unkown.yet"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v5, 0x7f080136

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_9

    move v6, v10

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, v12}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_a

    move v6, v10

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 86
    new-instance v2, Lcom/fleapapa/helper/Signin$1;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/Signin$1;-><init>(Lcom/fleapapa/helper/Signin;)V

    .line 108
    .local v2, sclick:Landroid/view/View$OnClickListener;
    const v5, 0x7f08013c

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v5, 0x7f08013f

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v5, 0x7f08013d

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    const v5, 0x7f08013d

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v6, Lcom/fleapapa/helper/Signin$2;

    invoke-direct {v6, p0}, Lcom/fleapapa/helper/Signin$2;-><init>(Lcom/fleapapa/helper/Signin;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v5, 0x7f08013b

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/fleapapa/util/MyImageButton;

    const v6, 0x7f0600c3

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/Signin;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 126
    const v5, 0x7f08013b

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/fleapapa/util/MyImageButton;

    new-instance v6, Lcom/fleapapa/helper/Signin$3;

    invoke-direct {v6, p0}, Lcom/fleapapa/helper/Signin$3;-><init>(Lcom/fleapapa/helper/Signin;)V

    invoke-virtual {v5, v6}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v5, p0, Lcom/fleapapa/helper/Signin;->eUser:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fleapapa/util/My;->loadUserAvatar(Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Lcom/fleapapa/helper/Signin;->eUser:Landroid/widget/EditText;

    new-instance v6, Lcom/fleapapa/helper/Signin$4;

    invoke-direct {v6, p0}, Lcom/fleapapa/helper/Signin$4;-><init>(Lcom/fleapapa/helper/Signin;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    sget-boolean v5, Lcom/fleapapa/helper/Signin;->noGuest:Z

    if-eqz v5, :cond_b

    .line 143
    const v5, 0x7f08013e

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    :goto_3
    sget v5, Lcom/fleapapa/util/My;->uid:I

    if-eqz v5, :cond_6

    .line 148
    const v5, 0x7f080135

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 150
    :cond_6
    invoke-virtual {p0, v12}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-boolean v5, p0, Lcom/fleapapa/helper/Signin;->force_signup:Z

    if-eqz v5, :cond_7

    .line 157
    const v5, 0x7f08013c

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->performClick()Z

    .line 158
    :cond_7
    return-void

    .line 71
    .end local v2           #sclick:Landroid/view/View$OnClickListener;
    .restart local p0
    :cond_8
    sget-object v6, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    move v6, v9

    .line 83
    goto/16 :goto_1

    :cond_a
    move v6, v9

    .line 84
    goto/16 :goto_2

    .line 144
    .restart local v2       #sclick:Landroid/view/View$OnClickListener;
    :cond_b
    invoke-virtual {p0, v12}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow;

    invoke-virtual {v5, v9}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "Signin.onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fleapapa/util/MyImageButton;

    sget v0, Lcom/fleapapa/util/My;->avatar:I

    invoke-static {v0}, Lcom/fleapapa/helper/Avatar;->avatar(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fleapapa/util/MyImageButton;->setImageResource(I)V

    .line 166
    return-void
.end method

.method sign(Z)V
    .locals 10
    .parameter "signup"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fleapapa/helper/Signin;->eUser:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, user:Ljava/lang/String;
    iget-object v0, p0, Lcom/fleapapa/helper/Signin;->ePswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, pswd:Ljava/lang/String;
    invoke-static {v9}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, pppp:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/Signin;->eMail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 176
    .local v5, mail:Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 177
    .local v6, handler:Landroid/os/Handler;
    new-instance v7, Lcom/fleapapa/helper/Signin$5;

    invoke-direct {v7, p0, v3}, Lcom/fleapapa/helper/Signin$5;-><init>(Lcom/fleapapa/helper/Signin;Ljava/lang/String;)V

    .line 215
    .local v7, done:Ljava/lang/Runnable;
    new-instance v8, Lcom/fleapapa/helper/Signin$6;

    invoke-direct {v8, p0, p1}, Lcom/fleapapa/helper/Signin$6;-><init>(Lcom/fleapapa/helper/Signin;Z)V

    .line 229
    .local v8, fail:Ljava/lang/Runnable;
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 230
    new-instance v0, Lcom/fleapapa/helper/Signin$7;

    const-string v2, "flea.signin"

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/fleapapa/helper/Signin$7;-><init>(Lcom/fleapapa/helper/Signin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 235
    invoke-virtual {v0}, Lcom/fleapapa/helper/Signin$7;->start()V

    .line 236
    return-void

    .line 174
    .end local v5           #mail:Ljava/lang/String;
    .end local v6           #handler:Landroid/os/Handler;
    .end local v7           #done:Ljava/lang/Runnable;
    .end local v8           #fail:Ljava/lang/Runnable;
    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0
.end method
