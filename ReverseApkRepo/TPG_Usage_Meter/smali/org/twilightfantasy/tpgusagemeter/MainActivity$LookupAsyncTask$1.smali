.class Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;


# direct methods
.method constructor <init>(Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask$1;->this$1:Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "certs"
    .parameter "authType"

    .prologue
    .line 205
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "certs"
    .parameter "authType"

    .prologue
    .line 208
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method
