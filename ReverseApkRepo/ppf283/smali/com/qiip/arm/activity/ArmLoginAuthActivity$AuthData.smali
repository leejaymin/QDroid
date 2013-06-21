.class Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;
.super Landroid/os/AsyncTask;
.source "ArmLoginAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiip/arm/activity/ArmLoginAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mLoginState:I

.field final synthetic this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;


# direct methods
.method private constructor <init>(Lcom/qiip/arm/activity/ArmLoginAuthActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->mLoginState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/qiip/arm/activity/ArmLoginAuthActivity;Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;-><init>(Lcom/qiip/arm/activity/ArmLoginAuthActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "params"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget-object v1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v1}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getAID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v2}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getGDID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v3}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getmID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v4}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getmPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getARMLoginProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->mLoginState:I

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 269
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x400

    const/4 v6, 0x1

    .line 168
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 174
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v4, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    if-ne v4, v6, :cond_1

    .line 176
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iput v6, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mNetwork:I

    .line 177
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v4, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nResultCode:I

    sput v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mResultCode:I

    .line 178
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v4, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    sput v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mRealResultCode:I

    .line 182
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    sget-object v5, Lcom/qiip/arm/ArmManager;->sAID:Ljava/lang/String;

    sget-object v6, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->ARMPluginAIDMasking(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, genAID:Ljava/lang/String;
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    #calls: Lcom/qiip/arm/activity/ArmLoginAuthActivity;->setSharedPref(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->access$0(Lcom/qiip/arm/activity/ArmLoginAuthActivity;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, cipherid:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v4}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getmID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qiip/arm/util/CipherAES;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :goto_0
    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/qiip/arm/util/FileIO;->setLoginSharedId(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    const-class v5, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    const-string v4, "VIEW_CODE"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const-string v4, "NICK_NAME"

    iget-object v5, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget-object v5, v5, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nResultNickname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 254
    .end local v0           #cipherid:Ljava/lang/String;
    .end local v2           #genAID:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 188
    .restart local v0       #cipherid:Ljava/lang/String;
    .restart local v2       #genAID:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0           #cipherid:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #genAID:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v4, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    const v5, -0xfffffed

    if-eq v4, v5, :cond_2

    .line 201
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v4, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    const v5, -0xffffff0

    if-eq v4, v5, :cond_2

    .line 202
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v4, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    const v5, -0xfffffee

    if-ne v4, v5, :cond_4

    .line 204
    :cond_2
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iput v6, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mNetwork:I

    .line 205
    sget v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mTryLogin:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mTryLogin:I

    .line 206
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    const-class v5, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    sget v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mTryLogin:I

    if-ne v4, v8, :cond_3

    .line 210
    const-string v4, "VIEW_CODE"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    :goto_2
    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 214
    :cond_3
    const-string v4, "VIEW_CODE"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v4, "VIEW_TYPE"

    iget-object v5, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v5, v5, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v4, "TEXT_ID"

    iget-object v5, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v5}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getmID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 220
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v4, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    const v5, -0xfffffef

    if-ne v4, v5, :cond_5

    .line 222
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iput v6, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mNetwork:I

    .line 223
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    const-class v5, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    const-string v4, "VIEW_CODE"

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v4, "NICK_NAME"

    iget-object v5, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget-object v5, v5, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nResultNickname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v4, "ID"

    iget-object v5, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v5}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getmID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 230
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v4, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    const v5, -0xffffff7

    if-ne v4, v5, :cond_6

    .line 232
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iput v6, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mNetwork:I

    .line 233
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    const-class v5, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    const-string v4, "VIEW_CODE"

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 238
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v4, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    const v5, -0xffffff8

    if-ne v4, v5, :cond_7

    .line 240
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iput v6, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mNetwork:I

    .line 241
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    const-class v5, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    const-string v4, "VIEW_CODE"

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 246
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v4, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    const v5, -0xfffffeb

    if-ne v4, v5, :cond_0

    .line 248
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iput v6, v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mNetwork:I

    .line 249
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    const-class v5, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    const-string v4, "VIEW_CODE"

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    sget-object v4, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 263
    return-void
.end method
