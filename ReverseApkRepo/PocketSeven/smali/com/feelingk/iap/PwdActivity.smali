.class public Lcom/feelingk/iap/PwdActivity;
.super Landroid/app/Activity;
.source "PwdActivity.java"


# instance fields
.field private RES_VERT_FILE_PATH:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field btn_pad_nor:Ljava/io/InputStream;

.field btn_pad_sel:Ljava/io/InputStream;

.field buttonHeight:I

.field buttonWidth:I

.field private decryptPwd:Ljava/lang/String;

.field delete:Landroid/widget/Button;

.field deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

.field eightDrawables:Landroid/graphics/drawable/StateListDrawable;

.field et1:Landroid/widget/EditText;

.field et2:Landroid/widget/EditText;

.field et3:Landroid/widget/EditText;

.field et4:Landroid/widget/EditText;

.field fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

.field fourDrawables:Landroid/graphics/drawable/StateListDrawable;

.field honeyCombFlag:Ljava/lang/Boolean;

.field hvga:Ljava/lang/Boolean;

.field inputNum:Ljava/lang/String;

.field isdelete:Ljava/io/InputStream;

.field iset:Landroid/graphics/drawable/Drawable;

.field iset1:Ljava/io/InputStream;

.field nineDrawables:Landroid/graphics/drawable/StateListDrawable;

.field noneDrawables:Landroid/graphics/drawable/StateListDrawable;

.field nor:Landroid/graphics/drawable/Drawable;

.field numCheck:I

.field oneDrawables:Landroid/graphics/drawable/StateListDrawable;

.field pwdText:Landroid/widget/TextView;

.field sel:Landroid/graphics/drawable/Drawable;

.field sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

.field sixDrawables:Landroid/graphics/drawable/StateListDrawable;

.field threeDrawables:Landroid/graphics/drawable/StateListDrawable;

.field twoDrawables:Landroid/graphics/drawable/StateListDrawable;

.field zeroDrawables:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const-string v0, "PwdActivity"

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    .line 46
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    .line 48
    iput v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    .line 52
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    .line 55
    iput v2, p0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    .line 59
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_nor:Ljava/io/InputStream;

    .line 64
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    .line 65
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 66
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 67
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 68
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 69
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 70
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 71
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 72
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 73
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 74
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 75
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 76
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 33
    return-void
.end method


# virtual methods
.method public checkDot()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1207
    iget v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-eqz v2, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "keypad_back.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1211
    .local v0, back:Ljava/io/InputStream;
    const-string v2, "none"

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1212
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    const/16 v2, 0x1e

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1213
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    invoke-virtual {v2, v1, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1215
    .end local v0           #back:Ljava/io/InputStream;
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1216
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1227
    :cond_1
    :goto_0
    return-void

    .line 1218
    :cond_2
    iget v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-ne v2, v6, :cond_3

    .line 1219
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1221
    :cond_3
    iget v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1222
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1224
    :cond_4
    iget v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1225
    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public checkInputNum()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1229
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v2, "checkInputNum \ub4e4\uc5b4\uc634"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1232
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v2, "\ube44\ubc00\ubc88\ud638 \uc77c\uce58"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/feelingk/iap/IAPActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1235
    .local v0, intent2:Landroid/content/Intent;
    const-string v1, "result"

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/feelingk/iap/PwdActivity;->setResult(ILandroid/content/Intent;)V

    .line 1238
    .end local v0           #intent2:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->finish()V

    .line 1255
    :goto_0
    return-void

    .line 1241
    :cond_1
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v2, "\ud328\uc2a4\uc6cc\ub4dc \uc5d0\ub7ec"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    const-string v2, "\ub2e4\uc2dc \ud55c\ubc88 \ube44\ubc00\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    const/4 v1, 0x0

    iput v1, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    .line 1244
    const-string v1, ""

    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    .line 1245
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1246
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1247
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1248
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1250
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1251
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1252
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    const-string v2, "\ucde8\uc18c"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 84
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "pwd"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "btn_pad_sel.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_sel:Ljava/io/InputStream;

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "btn_pad_nor.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_nor:Ljava/io/InputStream;

    .line 89
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_sel:Ljava/io/InputStream;

    const-string v9, "btn_pad_sel"

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_nor:Ljava/io/InputStream;

    const-string v9, "btn_pad_nor"

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "inputbox_pw_dot.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->iset1:Ljava/io/InputStream;

    .line 94
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->iset1:Ljava/io/InputStream;

    const-string v9, "inputbox_pw_dot"

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    .line 97
    :try_start_0
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_sel:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 98
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_nor:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 99
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->iset1:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_sel:Ljava/io/InputStream;

    .line 105
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_nor:Ljava/io/InputStream;

    .line 106
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->iset1:Ljava/io/InputStream;

    .line 108
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 109
    .local v3, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 111
    .local v1, deviceWidth:I
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 113
    .local v0, deviceHeight:I
    div-int/lit8 v8, v1, 0x4

    iput v8, p0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    .line 114
    div-int/lit8 v8, v0, 0x4

    iput v8, p0, Lcom/feelingk/iap/PwdActivity;->buttonHeight:I

    .line 116
    const/16 v8, 0x140

    if-ne v1, v8, :cond_0

    const/16 v8, 0x1e0

    if-eq v0, v8, :cond_1

    :cond_0
    const/16 v8, 0x1e0

    if-ne v1, v8, :cond_2

    const/16 v8, 0x140

    if-ne v0, v8, :cond_2

    .line 117
    :cond_1
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    .line 119
    :cond_2
    if-le v1, v0, :cond_3

    .line 120
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    .line 125
    :goto_1
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lcom/feelingk/iap/PwdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 126
    .local v7, wm:Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 128
    .local v2, disp:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v6

    .line 129
    .local v6, rotation:I
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "rotation : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    packed-switch v6, :pswitch_data_0

    .line 172
    :goto_2
    return-void

    .line 100
    .end local v0           #deviceHeight:I
    .end local v1           #deviceWidth:I
    .end local v2           #disp:Landroid/view/Display;
    .end local v3           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #rotation:I
    .end local v7           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v4

    .line 102
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #deviceHeight:I
    .restart local v1       #deviceWidth:I
    .restart local v3       #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_3
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    goto :goto_1

    .line 133
    .restart local v2       #disp:Landroid/view/Display;
    .restart local v6       #rotation:I
    .restart local v7       #wm:Landroid/view/WindowManager;
    :pswitch_0
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v9, "Portrait : 0"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 135
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewLandscape()V

    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_2

    .line 142
    :pswitch_1
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v9, "Landscape : 90"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_5

    .line 144
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_2

    .line 146
    :cond_5
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewLandscape()V

    goto :goto_2

    .line 151
    :pswitch_2
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v9, "Portrait : 180"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 153
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewLandscape()V

    goto :goto_2

    .line 155
    :cond_6
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_2

    .line 160
    :pswitch_3
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v9, "Landscape : 270"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_7

    .line 162
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_2

    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewLandscape()V

    goto :goto_2

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public viewLandscape()V
    .locals 50

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "viewLandscape"

    invoke-static/range {v46 .. v47}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v38, Landroid/widget/LinearLayout;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 176
    .local v38, root:Landroid/widget/LinearLayout;
    new-instance v46, Landroid/view/ViewGroup$LayoutParams;

    const/16 v47, -0x1

    const/16 v48, -0x1

    invoke-direct/range {v46 .. v48}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    const/16 v46, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 178
    const/16 v46, 0x11

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 180
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 181
    .local v25, left:Landroid/widget/LinearLayout;
    const/16 v46, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 183
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, 0x0

    const/16 v47, -0x1

    const/high16 v48, 0x3f80

    move-object/from16 v0, v26

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 184
    .local v26, leftLLParams:Landroid/widget/LinearLayout$LayoutParams;
    const-string v5, "#3C3C3C"

    .line 185
    .local v5, bgColor:Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 186
    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    const/16 v46, 0x11

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 188
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    new-instance v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 192
    .local v21, iv:Landroid/widget/ImageView;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, 0x6e

    const/16 v47, 0x28

    move-object/from16 v0, v22

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v22, ivParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0x0

    const/16 v47, 0x19

    const/16 v48, 0x0

    const/16 v49, 0x14

    move-object/from16 v0, v22

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "logo_pw.png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 196
    .local v20, is:Ljava/io/InputStream;
    const-string v46, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v46

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    const/16 v20, 0x0

    .line 198
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    new-instance v46, Landroid/widget/TextView;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    new-instance v47, Landroid/view/ViewGroup$LayoutParams;

    const/16 v48, -0x1

    .line 202
    const/16 v49, -0x2

    invoke-direct/range {v47 .. v49}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 201
    invoke-virtual/range {v46 .. v47}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    const/16 v47, 0x11

    invoke-virtual/range {v46 .. v47}, Landroid/widget/TextView;->setGravity(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    const/high16 v47, 0x4170

    invoke-virtual/range {v46 .. v47}, Landroid/widget/TextView;->setTextSize(F)V

    .line 205
    const-string v43, "#ffffff"

    .line 206
    .local v43, titleColor:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    const-string v47, "T store \uc7a0\uae08\uc124\uc815 \ube44\ubc00\ubc88\ud638\ub97c\n\uc785\ub825 \ud574\uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual/range {v46 .. v47}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 212
    .local v27, line:Landroid/widget/LinearLayout;
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, -0x1

    .line 213
    const/16 v47, -0x2

    .line 212
    move-object/from16 v0, v28

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v28, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0x0

    const/16 v47, 0xf

    const/16 v48, 0x0

    const/16 v49, 0x14

    move-object/from16 v0, v28

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 215
    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "bg_line.png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 217
    const-string v46, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v46

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    const/16 v20, 0x0

    .line 219
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    new-instance v34, Landroid/widget/LinearLayout;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .local v34, pwd:Landroid/widget/LinearLayout;
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, -0x1

    .line 226
    const/16 v47, -0x2

    .line 225
    move-object/from16 v0, v35

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v35, pwdParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0x5

    const/16 v47, 0x0

    const/16 v48, 0x5

    const/16 v49, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 228
    const/16 v46, 0x11

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 229
    invoke-virtual/range {v34 .. v35}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    const/16 v19, 0x0

    .line 233
    .local v19, inputBoxParams2:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    if-eqz v46, :cond_0

    .line 235
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, 0x32

    const/16 v47, 0x28

    move-object/from16 v0, v18

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v18, inputBoxParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .end local v19           #inputBoxParams2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0x32

    const/16 v47, 0x28

    move-object/from16 v0, v19

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    .restart local v19       #inputBoxParams2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0xf

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 257
    :goto_0
    const/16 v46, 0xa

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 259
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 260
    .local v14, inputBox1:Landroid/widget/LinearLayout;
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 261
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 262
    const/16 v46, 0x11

    move/from16 v0, v46

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "inputbox_pw.png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 264
    const-string v46, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    const/16 v20, 0x0

    .line 266
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    new-instance v46, Landroid/widget/EditText;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v46, v0

    const/16 v47, 0x11

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setGravity(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v46, v0

    new-instance v47, Landroid/view/ViewGroup$LayoutParams;

    const/16 v48, 0x14

    const/16 v49, 0x14

    invoke-direct/range {v47 .. v49}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 276
    .local v15, inputBox2:Landroid/widget/LinearLayout;
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 277
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 278
    const/16 v46, 0x11

    move/from16 v0, v46

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "inputbox_pw.png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 280
    const-string v46, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    const/16 v20, 0x0

    .line 282
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    new-instance v46, Landroid/widget/EditText;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v46, v0

    const/16 v47, 0x11

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setGravity(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v46, v0

    new-instance v47, Landroid/view/ViewGroup$LayoutParams;

    const/16 v48, 0x14

    const/16 v49, 0x14

    invoke-direct/range {v47 .. v49}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 293
    .local v16, inputBox3:Landroid/widget/LinearLayout;
    const/16 v46, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 294
    const/16 v46, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 295
    const/16 v46, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "inputbox_pw.png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 297
    const-string v46, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v46

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    const/16 v20, 0x0

    .line 299
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    new-instance v46, Landroid/widget/EditText;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v46, v0

    const/16 v47, 0x11

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setGravity(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v46, v0

    new-instance v47, Landroid/view/ViewGroup$LayoutParams;

    const/16 v48, 0x14

    const/16 v49, 0x14

    invoke-direct/range {v47 .. v49}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v46, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 309
    .local v17, inputBox4:Landroid/widget/LinearLayout;
    const/16 v46, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 310
    const/16 v46, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 311
    const/16 v46, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "inputbox_pw.png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 313
    const-string v46, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v46

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    const/16 v20, 0x0

    .line 315
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    new-instance v46, Landroid/widget/EditText;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v46, v0

    const/16 v47, 0x11

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setGravity(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v46, v0

    new-instance v47, Landroid/view/ViewGroup$LayoutParams;

    const/16 v48, 0x14

    const/16 v49, 0x14

    invoke-direct/range {v47 .. v49}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v46, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    new-instance v36, Landroid/widget/LinearLayout;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 328
    .local v36, right:Landroid/widget/LinearLayout;
    const/16 v46, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 330
    new-instance v37, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, 0x0

    const/16 v47, -0x1

    const/high16 v48, 0x3f80

    move-object/from16 v0, v37

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 331
    .local v37, rightLLParams:Landroid/widget/LinearLayout$LayoutParams;
    const-string v46, "#212121"

    invoke-static/range {v46 .. v46}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 332
    const/16 v46, 0x2

    const/16 v47, 0x0

    const/16 v48, 0x2

    const/16 v49, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 333
    invoke-virtual/range {v36 .. v37}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    const/16 v46, 0x11

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 335
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    const v41, 0x10100a7

    .line 341
    .local v41, statePressed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v41, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 377
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 378
    .local v23, keyPad:Landroid/widget/LinearLayout;
    const/16 v46, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 380
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, -0x1

    .line 381
    const/16 v47, -0x1

    .line 380
    move-object/from16 v0, v24

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 382
    .local v24, keyPadParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0x11

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 383
    const-string v46, "#212121"

    invoke-static/range {v46 .. v46}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 384
    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 388
    .local v6, buttonRow1:Landroid/widget/LinearLayout;
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 390
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, -0x1

    .line 391
    const/16 v47, -0x2

    const/high16 v48, 0x3f80

    .line 390
    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 392
    .local v10, buttonRowParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0x5

    move/from16 v0, v46

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 393
    const/16 v46, 0x11

    move/from16 v0, v46

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 394
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, -0x14

    const/high16 v48, 0x3f80

    move-object/from16 v0, v32

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 399
    .local v32, numTopParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, v32

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 402
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, -0x14

    const/high16 v48, 0x3f80

    move-object/from16 v0, v31

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 403
    .local v31, numParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, v31

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 405
    new-instance v33, Landroid/widget/Button;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 406
    .local v33, one:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    const/16 v46, 0x11

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 408
    const-string v46, "1"

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 409
    const/high16 v46, 0x41f0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 410
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 411
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    new-instance v44, Landroid/widget/Button;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 415
    .local v44, two:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    const/16 v46, 0x11

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 417
    const-string v46, "2"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const/high16 v46, 0x41f0

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 419
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 420
    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 423
    new-instance v42, Landroid/widget/Button;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 424
    .local v42, three:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    const/16 v46, 0x11

    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 426
    const-string v46, "3"

    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 427
    const/high16 v46, 0x41f0

    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 428
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 429
    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 433
    .local v7, buttonRow2:Landroid/widget/LinearLayout;
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 434
    const/16 v46, 0x11

    move/from16 v0, v46

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 435
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    new-instance v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 439
    .local v13, four:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    const/16 v46, 0x11

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 441
    const-string v46, "4"

    move-object/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 442
    const/high16 v46, 0x41f0

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 443
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 444
    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 447
    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 448
    .local v12, five:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    const/16 v46, 0x11

    move/from16 v0, v46

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 450
    const-string v46, "5"

    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 451
    const/high16 v46, 0x41f0

    move/from16 v0, v46

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 452
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move/from16 v0, v46

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 453
    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 456
    new-instance v40, Landroid/widget/Button;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 457
    .local v40, six:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    const/16 v46, 0x11

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 459
    const-string v46, "6"

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 460
    const/high16 v46, 0x41f0

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 461
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 462
    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 466
    .local v8, buttonRow3:Landroid/widget/LinearLayout;
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 467
    const/16 v46, 0x11

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 468
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    new-instance v39, Landroid/widget/Button;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 472
    .local v39, seven:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    const/16 v46, 0x11

    move-object/from16 v0, v39

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 474
    const-string v46, "7"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 475
    const/high16 v46, 0x41f0

    move-object/from16 v0, v39

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 476
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, v39

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 477
    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 480
    new-instance v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 481
    .local v11, eight:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    const/16 v46, 0x11

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 483
    const-string v46, "8"

    move-object/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 484
    const/high16 v46, 0x41f0

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 485
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 486
    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    new-instance v29, Landroid/widget/Button;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 490
    .local v29, nine:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    const/16 v46, 0x11

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 492
    const-string v46, "9"

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 493
    const/high16 v46, 0x41f0

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 494
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 495
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 499
    .local v9, buttonRow4:Landroid/widget/LinearLayout;
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 500
    const/16 v46, 0x11

    move/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 501
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    new-instance v30, Landroid/widget/Button;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 505
    .local v30, none:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 509
    new-instance v45, Landroid/widget/Button;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 510
    .local v45, zero:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 511
    const/16 v46, 0x11

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setGravity(I)V

    .line 512
    const-string v46, "0"

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 513
    const/high16 v46, 0x41f0

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setTextSize(F)V

    .line 514
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setTextColor(I)V

    .line 515
    move-object/from16 v0, v45

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 518
    new-instance v46, Landroid/widget/Button;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v46, v0

    const/16 v47, 0x11

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setGravity(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v46, v0

    const-string v47, "\ucde8\uc18c"

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v46, v0

    const/high16 v47, 0x41a0

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setTextSize(F)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v46, v0

    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setTextColor(I)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/PwdActivity;->setContentView(Landroid/view/View;)V

    .line 529
    new-instance v46, Lcom/feelingk/iap/PwdActivity$1;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$1;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    new-instance v46, Lcom/feelingk/iap/PwdActivity$2;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$2;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    new-instance v46, Lcom/feelingk/iap/PwdActivity$3;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$3;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    new-instance v46, Lcom/feelingk/iap/PwdActivity$4;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$4;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    new-instance v46, Lcom/feelingk/iap/PwdActivity$5;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$5;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    new-instance v46, Lcom/feelingk/iap/PwdActivity$6;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$6;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    new-instance v46, Lcom/feelingk/iap/PwdActivity$7;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$7;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    new-instance v46, Lcom/feelingk/iap/PwdActivity$8;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$8;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    new-instance v46, Lcom/feelingk/iap/PwdActivity$9;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$9;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    new-instance v46, Lcom/feelingk/iap/PwdActivity$10;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$10;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v46, v0

    new-instance v47, Lcom/feelingk/iap/PwdActivity$11;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$11;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    return-void

    .line 244
    .end local v6           #buttonRow1:Landroid/widget/LinearLayout;
    .end local v7           #buttonRow2:Landroid/widget/LinearLayout;
    .end local v8           #buttonRow3:Landroid/widget/LinearLayout;
    .end local v9           #buttonRow4:Landroid/widget/LinearLayout;
    .end local v10           #buttonRowParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #eight:Landroid/widget/Button;
    .end local v12           #five:Landroid/widget/Button;
    .end local v13           #four:Landroid/widget/Button;
    .end local v14           #inputBox1:Landroid/widget/LinearLayout;
    .end local v15           #inputBox2:Landroid/widget/LinearLayout;
    .end local v16           #inputBox3:Landroid/widget/LinearLayout;
    .end local v17           #inputBox4:Landroid/widget/LinearLayout;
    .end local v18           #inputBoxParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v23           #keyPad:Landroid/widget/LinearLayout;
    .end local v24           #keyPadParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #nine:Landroid/widget/Button;
    .end local v30           #none:Landroid/widget/Button;
    .end local v31           #numParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v32           #numTopParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v33           #one:Landroid/widget/Button;
    .end local v36           #right:Landroid/widget/LinearLayout;
    .end local v37           #rightLLParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v39           #seven:Landroid/widget/Button;
    .end local v40           #six:Landroid/widget/Button;
    .end local v41           #statePressed:I
    .end local v42           #three:Landroid/widget/Button;
    .end local v44           #two:Landroid/widget/Button;
    .end local v45           #zero:Landroid/widget/Button;
    :cond_0
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v46, 0x37

    const/16 v47, 0x37

    move-object/from16 v0, v18

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    .restart local v18       #inputBoxParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .end local v19           #inputBoxParams2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0x37

    const/16 v47, 0x37

    move-object/from16 v0, v19

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .restart local v19       #inputBoxParams2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v46, 0xf

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method

.method public viewPortrait()V
    .locals 48

    .prologue
    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "viewPortrait"

    invoke-static/range {v44 .. v45}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    new-instance v34, Landroid/widget/LinearLayout;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 700
    .local v34, root:Landroid/widget/LinearLayout;
    new-instance v44, Landroid/view/ViewGroup$LayoutParams;

    const/16 v45, -0x1

    const/16 v46, -0x1

    invoke-direct/range {v44 .. v46}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    const/16 v44, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 702
    const-string v5, "#3C3C3C"

    .line 703
    .local v5, bgColor:Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 704
    const/16 v44, 0x11

    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 706
    new-instance v40, Landroid/widget/LinearLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 708
    .local v40, top:Landroid/widget/LinearLayout;
    new-instance v41, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v44, -0x1

    .line 709
    const/16 v45, 0x0

    const/high16 v46, 0x3f80

    .line 708
    move-object/from16 v0, v41

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 710
    .local v41, topParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    const/16 v44, 0x11

    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 712
    const/16 v44, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 713
    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 715
    new-instance v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 717
    .local v21, iv:Landroid/widget/ImageView;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v44, 0x6e

    const/16 v45, 0x28

    move-object/from16 v0, v22

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 718
    .local v22, ivParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0x0

    const/16 v45, 0x19

    const/16 v46, 0x0

    const/16 v47, 0x14

    move-object/from16 v0, v22

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 719
    const/16 v44, 0x11

    move/from16 v0, v44

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 720
    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v46, "logo_pw.png"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 722
    .local v20, is:Ljava/io/InputStream;
    const-string v44, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    const/16 v20, 0x0

    .line 724
    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 726
    new-instance v44, Landroid/widget/TextView;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    new-instance v45, Landroid/view/ViewGroup$LayoutParams;

    const/16 v46, -0x1

    .line 728
    const/16 v47, -0x2

    invoke-direct/range {v45 .. v47}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 727
    invoke-virtual/range {v44 .. v45}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    const/16 v45, 0x11

    invoke-virtual/range {v44 .. v45}, Landroid/widget/TextView;->setGravity(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    const/high16 v45, 0x4170

    invoke-virtual/range {v44 .. v45}, Landroid/widget/TextView;->setTextSize(F)V

    .line 731
    const-string v39, "#ffffff"

    .line 732
    .local v39, titleColor:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    const-string v45, "T store \uc7a0\uae08\uc124\uc815 \ube44\ubc00\ubc88\ud638\ub97c\n\uc785\ub825 \ud574\uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual/range {v44 .. v45}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 736
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 738
    .local v25, line:Landroid/widget/LinearLayout;
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v44, -0x1

    .line 739
    const/16 v45, -0x2

    .line 738
    move-object/from16 v0, v26

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 740
    .local v26, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0x0

    const/16 v45, 0xf

    const/16 v46, 0x0

    const/16 v47, 0x14

    move-object/from16 v0, v26

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 741
    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v46, "bg_line.png"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 743
    const-string v44, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 744
    const/16 v20, 0x0

    .line 745
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 748
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 749
    .local v32, pwd:Landroid/widget/LinearLayout;
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 751
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v44, -0x1

    .line 752
    const/16 v45, -0x2

    .line 751
    move-object/from16 v0, v33

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 753
    .local v33, pwdParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0xf

    move-object/from16 v0, v33

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 754
    const/16 v44, 0x11

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 755
    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 758
    const/16 v19, 0x0

    .line 759
    .local v19, inputBoxParams2:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    if-eqz v44, :cond_0

    .line 761
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v44, 0x32

    const/16 v45, 0x28

    move-object/from16 v0, v18

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 764
    .local v18, inputBoxParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .end local v19           #inputBoxParams2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0x32

    const/16 v45, 0x28

    move-object/from16 v0, v19

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 766
    .restart local v19       #inputBoxParams2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0xf

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 779
    :goto_0
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 780
    .local v14, inputBox1:Landroid/widget/LinearLayout;
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 781
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 782
    const/16 v44, 0x11

    move/from16 v0, v44

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 783
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v46, "inputbox_pw.png"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 784
    const-string v44, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    const/16 v20, 0x0

    .line 786
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 789
    new-instance v44, Landroid/widget/EditText;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v44, v0

    const/16 v45, 0x11

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setGravity(I)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v44, v0

    new-instance v45, Landroid/view/ViewGroup$LayoutParams;

    const/16 v46, 0x14

    const/16 v47, 0x14

    invoke-direct/range {v45 .. v47}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 795
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 796
    .local v15, inputBox2:Landroid/widget/LinearLayout;
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 797
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 798
    const/16 v44, 0x11

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 799
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v46, "inputbox_pw.png"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 800
    const-string v44, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 801
    const/16 v20, 0x0

    .line 802
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 806
    new-instance v44, Landroid/widget/EditText;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v44, v0

    const/16 v45, 0x11

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setGravity(I)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v44, v0

    new-instance v45, Landroid/view/ViewGroup$LayoutParams;

    const/16 v46, 0x14

    const/16 v47, 0x14

    invoke-direct/range {v45 .. v47}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 812
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 813
    .local v16, inputBox3:Landroid/widget/LinearLayout;
    const/16 v44, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 814
    const/16 v44, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 815
    const/16 v44, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v46, "inputbox_pw.png"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 817
    const-string v44, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    const/16 v20, 0x0

    .line 819
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 822
    new-instance v44, Landroid/widget/EditText;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v44, v0

    const/16 v45, 0x11

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setGravity(I)V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v44, v0

    new-instance v45, Landroid/view/ViewGroup$LayoutParams;

    const/16 v46, 0x14

    const/16 v47, 0x14

    invoke-direct/range {v45 .. v47}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v44, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 828
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 829
    .local v17, inputBox4:Landroid/widget/LinearLayout;
    const/16 v44, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 830
    const/16 v44, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 831
    const/16 v44, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 832
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v46, "inputbox_pw.png"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 833
    const-string v44, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 834
    const/16 v20, 0x0

    .line 835
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 838
    new-instance v44, Landroid/widget/EditText;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v44, v0

    const/16 v45, 0x11

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setGravity(I)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v44, v0

    new-instance v45, Landroid/view/ViewGroup$LayoutParams;

    const/16 v46, 0x14

    const/16 v47, 0x14

    invoke-direct/range {v45 .. v47}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v44, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 849
    const v37, 0x10100a7

    .line 851
    .local v37, statePressed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v37, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 887
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 888
    .local v23, keyPad:Landroid/widget/LinearLayout;
    const/16 v44, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 890
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v44, -0x1

    .line 891
    const/16 v45, 0x0

    const/high16 v46, 0x3f80

    .line 890
    move-object/from16 v0, v24

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 892
    .local v24, keyPadParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0x11

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 893
    const-string v44, "#212121"

    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 894
    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 897
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 898
    .local v6, buttonRow1:Landroid/widget/LinearLayout;
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 900
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v44, -0x1

    .line 901
    const/16 v45, 0x0

    const/high16 v46, 0x3f80

    .line 900
    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 902
    .local v10, buttonRowParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0x5

    move/from16 v0, v44

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 903
    const/16 v44, 0x11

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 904
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 908
    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x14

    const/high16 v46, 0x3f80

    move-object/from16 v0, v30

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 909
    .local v30, numTopParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 912
    new-instance v29, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x14

    const/high16 v46, 0x3f80

    move-object/from16 v0, v29

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 913
    .local v29, numParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 914
    new-instance v31, Landroid/widget/Button;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 915
    .local v31, one:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 916
    const/16 v44, 0x11

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 917
    const-string v44, "1"

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 918
    const/high16 v44, 0x41f0

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 919
    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 920
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 923
    new-instance v42, Landroid/widget/Button;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 924
    .local v42, two:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 925
    const/16 v44, 0x11

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 926
    const-string v44, "2"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 927
    const/high16 v44, 0x41f0

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 928
    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 929
    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 932
    new-instance v38, Landroid/widget/Button;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 933
    .local v38, three:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 934
    const/16 v44, 0x11

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 935
    const-string v44, "3"

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 936
    const/high16 v44, 0x41f0

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 937
    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 938
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 941
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 942
    .local v7, buttonRow2:Landroid/widget/LinearLayout;
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 943
    const/16 v44, 0x11

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 944
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 947
    new-instance v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 948
    .local v13, four:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 949
    const/16 v44, 0x11

    move/from16 v0, v44

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 950
    const-string v44, "4"

    move-object/from16 v0, v44

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 951
    const/high16 v44, 0x41f0

    move/from16 v0, v44

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 952
    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 953
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 954
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 956
    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 957
    .local v12, five:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 958
    const/16 v44, 0x11

    move/from16 v0, v44

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 959
    const-string v44, "5"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 960
    const/high16 v44, 0x41f0

    move/from16 v0, v44

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 961
    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 962
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 963
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 965
    new-instance v36, Landroid/widget/Button;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 966
    .local v36, six:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 967
    const/16 v44, 0x11

    move-object/from16 v0, v36

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 968
    const-string v44, "6"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 969
    const/high16 v44, 0x41f0

    move-object/from16 v0, v36

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 970
    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v36

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 971
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 974
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 975
    .local v8, buttonRow3:Landroid/widget/LinearLayout;
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 976
    const/16 v44, 0x11

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 977
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 980
    new-instance v35, Landroid/widget/Button;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 981
    .local v35, seven:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 982
    const/16 v44, 0x11

    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 983
    const-string v44, "7"

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 984
    const/high16 v44, 0x41f0

    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 985
    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 986
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 989
    new-instance v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 990
    .local v11, eight:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 991
    const/16 v44, 0x11

    move/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 992
    const-string v44, "8"

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 993
    const/high16 v44, 0x41f0

    move/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 994
    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 995
    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 998
    new-instance v27, Landroid/widget/Button;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 999
    .local v27, nine:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1000
    const/16 v44, 0x11

    move-object/from16 v0, v27

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 1001
    const-string v44, "9"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    const/high16 v44, 0x41f0

    move-object/from16 v0, v27

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1003
    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    move-object/from16 v0, v27

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1004
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1007
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1008
    .local v9, buttonRow4:Landroid/widget/LinearLayout;
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1009
    const/16 v44, 0x11

    move/from16 v0, v44

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1010
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1013
    new-instance v28, Landroid/widget/Button;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1014
    .local v28, none:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1015
    invoke-virtual/range {v28 .. v29}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1018
    new-instance v43, Landroid/widget/Button;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1019
    .local v43, zero:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1020
    const/16 v44, 0x11

    invoke-virtual/range {v43 .. v44}, Landroid/widget/Button;->setGravity(I)V

    .line 1021
    const-string v44, "0"

    invoke-virtual/range {v43 .. v44}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    const/high16 v44, 0x41f0

    invoke-virtual/range {v43 .. v44}, Landroid/widget/Button;->setTextSize(F)V

    .line 1023
    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Landroid/widget/Button;->setTextColor(I)V

    .line 1024
    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1027
    new-instance v44, Landroid/widget/Button;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v44, v0

    const/16 v45, 0x11

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setGravity(I)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v44, v0

    const-string v45, "\ucde8\uc18c"

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v44, v0

    const/high16 v45, 0x41a0

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setTextSize(F)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v44, v0

    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setTextColor(I)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1036
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/PwdActivity;->setContentView(Landroid/view/View;)V

    .line 1038
    new-instance v44, Lcom/feelingk/iap/PwdActivity$12;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$12;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    new-instance v44, Lcom/feelingk/iap/PwdActivity$13;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$13;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    new-instance v44, Lcom/feelingk/iap/PwdActivity$14;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$14;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    new-instance v44, Lcom/feelingk/iap/PwdActivity$15;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$15;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v44

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    new-instance v44, Lcom/feelingk/iap/PwdActivity$16;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$16;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    new-instance v44, Lcom/feelingk/iap/PwdActivity$17;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$17;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1122
    new-instance v44, Lcom/feelingk/iap/PwdActivity$18;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$18;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    new-instance v44, Lcom/feelingk/iap/PwdActivity$19;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$19;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1150
    new-instance v44, Lcom/feelingk/iap/PwdActivity$20;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$20;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    new-instance v44, Lcom/feelingk/iap/PwdActivity$21;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$21;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v43 .. v44}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v44, v0

    new-instance v45, Lcom/feelingk/iap/PwdActivity$22;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$22;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1204
    return-void

    .line 770
    .end local v6           #buttonRow1:Landroid/widget/LinearLayout;
    .end local v7           #buttonRow2:Landroid/widget/LinearLayout;
    .end local v8           #buttonRow3:Landroid/widget/LinearLayout;
    .end local v9           #buttonRow4:Landroid/widget/LinearLayout;
    .end local v10           #buttonRowParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #eight:Landroid/widget/Button;
    .end local v12           #five:Landroid/widget/Button;
    .end local v13           #four:Landroid/widget/Button;
    .end local v14           #inputBox1:Landroid/widget/LinearLayout;
    .end local v15           #inputBox2:Landroid/widget/LinearLayout;
    .end local v16           #inputBox3:Landroid/widget/LinearLayout;
    .end local v17           #inputBox4:Landroid/widget/LinearLayout;
    .end local v18           #inputBoxParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v23           #keyPad:Landroid/widget/LinearLayout;
    .end local v24           #keyPadParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v27           #nine:Landroid/widget/Button;
    .end local v28           #none:Landroid/widget/Button;
    .end local v29           #numParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v30           #numTopParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v31           #one:Landroid/widget/Button;
    .end local v35           #seven:Landroid/widget/Button;
    .end local v36           #six:Landroid/widget/Button;
    .end local v37           #statePressed:I
    .end local v38           #three:Landroid/widget/Button;
    .end local v42           #two:Landroid/widget/Button;
    .end local v43           #zero:Landroid/widget/Button;
    :cond_0
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v44, 0x3c

    const/16 v45, 0x37

    move-object/from16 v0, v18

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 773
    .restart local v18       #inputBoxParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .end local v19           #inputBoxParams2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0x3c

    const/16 v45, 0x37

    move-object/from16 v0, v19

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 775
    .restart local v19       #inputBoxParams2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v44, 0xf

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method
