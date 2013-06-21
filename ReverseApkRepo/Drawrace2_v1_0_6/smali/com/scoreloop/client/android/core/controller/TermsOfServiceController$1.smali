.class final Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    sget-object v1, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$3;->a:[I

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/TermsOfService;->getStatus()Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->b(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-interface {v1, v2, v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;->termsOfServiceControllerDidFinish(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Ljava/lang/Boolean;)V

    .line 210
    return-void

    .line 203
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 206
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
