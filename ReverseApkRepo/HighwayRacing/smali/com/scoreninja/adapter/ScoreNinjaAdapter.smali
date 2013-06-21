.class public final Lcom/scoreninja/adapter/ScoreNinjaAdapter;
.super Ljava/lang/Object;
.source "ScoreNinjaAdapter.java"


# static fields
.field private static final ACTIVITY_CLASS:Ljava/lang/String; = "com.scoreninja.ScoreNinja"

.field private static final KEY_APP_ID:Ljava/lang/String; = "appid"

.field private static final KEY_COMMENTS:Ljava/lang/String; = "comments"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_NEW_SCORE:Ljava/lang/String; = "newscore"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_SUB_BOARD:Ljava/lang/String; = "subboard"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field static final NEVER_ASK_PREF:Ljava/lang/String; = "neverask"

.field public static final PACKAGE:Ljava/lang/String; = "com.scoreninja"

.field static final PREFS_NAME:Ljava/lang/String; = "ScoreNinjaPrefs"

.field private static final REQUEST_CODE:I = 0x3ade7255

.field private static final SERVICE_CLASS:Ljava/lang/String; = "com.scoreninja.ScoreNinjaService"


# instance fields
.field private final appId:Ljava/lang/String;

.field private final parent:Landroid/app/Activity;

.field private final signer:Lcom/scoreninja/adapter/RequestSigner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appId"
    .parameter "privateKey"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->parent:Landroid/app/Activity;

    .line 86
    iput-object p2, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->appId:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/scoreninja/adapter/RequestSigner;

    invoke-direct {v0, p3}, Lcom/scoreninja/adapter/RequestSigner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->signer:Lcom/scoreninja/adapter/RequestSigner;

    .line 88
    return-void
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 198
    .line 199
    :try_start_0
    const-string v2, "com.scoreninja"

    const/4 v3, 0x0

    .line 198
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    .local v1, unusedContext:Landroid/content/Context;
    const/4 v2, 0x1

    .end local v1           #unusedContext:Landroid/content/Context;
    :goto_0
    return v2

    .line 200
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v2, v4

    .line 201
    goto :goto_0
.end method

.method public static neverAskAgain(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 186
    const-string v1, "ScoreNinjaPrefs"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "neverask"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 149
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 150
    const v7, 0x3ade7255

    if-ne p1, v7, :cond_0

    .line 151
    if-eqz p3, :cond_0

    .line 152
    const-string v7, "newscore"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 153
    .local v3, newScore:I
    const-string v7, "signature"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, signature:Ljava/lang/String;
    const-string v7, "subboard"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, subBoard:Ljava/lang/String;
    iget-object v7, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->signer:Lcom/scoreninja/adapter/RequestSigner;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->appId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v6, :cond_1

    move-object v9, v6

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/scoreninja/adapter/RequestSigner;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, scoreSignature:Ljava/lang/String;
    const/4 v7, 0x1

    if-lt v3, v7, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 178
    .end local v3           #newScore:I
    .end local v4           #scoreSignature:Ljava/lang/String;
    .end local v5           #signature:Ljava/lang/String;
    .end local v6           #subBoard:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 155
    .restart local v3       #newScore:I
    .restart local v5       #signature:Ljava/lang/String;
    .restart local v6       #subBoard:Ljava/lang/String;
    :cond_1
    const-string v9, ""

    goto :goto_0

    .line 160
    .restart local v4       #scoreSignature:Ljava/lang/String;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v2, newIntent:Landroid/content/Intent;
    const-string v7, "com.scoreninja"

    const-string v8, "com.scoreninja.ScoreNinjaService"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v7, "appid"

    iget-object v8, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->appId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v7, "newscore"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    if-eqz v6, :cond_3

    const-string v7, "subboard"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :cond_3
    const-string v7, "name"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "comments"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 167
    const-string v7, "name"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, name:Ljava/lang/String;
    const-string v7, "comments"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, comments:Ljava/lang/String;
    const-string v7, "name"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v7, "comments"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v7, "signature"

    iget-object v8, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->signer:Lcom/scoreninja/adapter/RequestSigner;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->appId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v6, :cond_4

    move-object v10, v6

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 172
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/scoreninja/adapter/RequestSigner;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    .end local v0           #comments:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->parent:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 171
    .restart local v0       #comments:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    :cond_4
    const-string v10, ""

    goto :goto_2

    .line 174
    .end local v0           #comments:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    :cond_5
    const-string v7, "signature"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public show()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->show(I)V

    .line 96
    return-void
.end method

.method public show(I)V
    .locals 1
    .parameter "newScore"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, v0, v0}, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->show(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public show(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "newScore"
    .parameter "titleText"
    .parameter "subBoard"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->parent:Landroid/app/Activity;

    invoke-static {v1}, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v1, 0x420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    const-string v1, "com.scoreninja"

    const-string v2, "com.scoreninja.ScoreNinja"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "appid"

    iget-object v2, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    if-eqz p2, :cond_0

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :cond_0
    const-string v1, "newscore"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    if-eqz p3, :cond_1

    const-string v1, "subboard"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_1
    const-string v1, "signature"

    iget-object v2, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->signer:Lcom/scoreninja/adapter/RequestSigner;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->appId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_3

    move-object v4, p3

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/scoreninja/adapter/RequestSigner;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->parent:Landroid/app/Activity;

    const v2, 0x3ade7255

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 128
    .restart local v0       #i:Landroid/content/Intent;
    :cond_3
    const-string v4, ""

    goto :goto_0

    .line 135
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->parent:Landroid/app/Activity;

    invoke-static {v1}, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->neverAskAgain(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    new-instance v1, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;

    iget-object v2, p0, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->parent:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 131
    .restart local v0       #i:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
