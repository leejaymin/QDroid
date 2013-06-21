.class Lcom/fleapapa/helper/Signin$5;
.super Ljava/lang/Object;
.source "Signin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Signin;->sign(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Signin;

.field private final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Signin;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Signin$5;->this$0:Lcom/fleapapa/helper/Signin;

    iput-object p2, p0, Lcom/fleapapa/helper/Signin$5;->val$user:Ljava/lang/String;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "|"

    .line 179
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$5;->this$0:Lcom/fleapapa/helper/Signin;

    invoke-static {v0, v3}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 180
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$5;->this$0:Lcom/fleapapa/helper/Signin;

    const v1, 0x7f0600b6

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;I)V

    .line 182
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$5;->val$user:Ljava/lang/String;

    sput-object v0, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$5;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->ePswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$5;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$5;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eCity:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$5;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eMail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    .line 192
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 193
    const-string v1, "uid"

    aput-object v1, v0, v3

    sget v1, Lcom/fleapapa/util/My;->uid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 194
    const-string v1, "user"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 195
    const-string v2, "pswd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 196
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 197
    const-string v2, "city"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 198
    const-string v2, "mail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 202
    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uinfo-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/fleapapa/util/My;->loadMyPreferences()V

    .line 208
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa;->setMyUE()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$5;->this$0:Lcom/fleapapa/helper/Signin;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Signin;->setResult(I)V

    .line 212
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$5;->this$0:Lcom/fleapapa/helper/Signin;

    invoke-virtual {v0}, Lcom/fleapapa/helper/Signin;->finish()V

    .line 213
    return-void
.end method
