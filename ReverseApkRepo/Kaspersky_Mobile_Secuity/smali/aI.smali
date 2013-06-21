.class public final LaI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/kms/activation/gui/ActivationActivity;


# direct methods
.method public constructor <init>(Lcom/kms/activation/gui/ActivationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, LaI;->a:Lcom/kms/activation/gui/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, LaI;->a:Lcom/kms/activation/gui/ActivationActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/ActivationActivity;->a(Lcom/kms/activation/gui/ActivationActivity;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, LaI;->a:Lcom/kms/activation/gui/ActivationActivity;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kms/activation/gui/ActivationActivity;->a(Lcom/kms/activation/gui/ActivationActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    new-instance v0, LaJ;

    invoke-direct {v0, p0}, LaJ;-><init>(LaI;)V

    .line 199
    new-instance v1, Leb;

    iget-object v2, p0, LaI;->a:Lcom/kms/activation/gui/ActivationActivity;

    const/4 v3, 0x0

    iget-object v4, p0, LaI;->a:Lcom/kms/activation/gui/ActivationActivity;

    const v5, 0x7f080287

    invoke-virtual {v4, v5}, Lcom/kms/activation/gui/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Leb;-><init>(Landroid/app/Activity;Lej;ILjava/lang/String;)V

    invoke-virtual {v1}, Leb;->a()V

    .line 207
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
