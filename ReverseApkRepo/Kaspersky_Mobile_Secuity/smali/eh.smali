.class public final Leh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/WelcomeActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Leh;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 165
    iget-object v0, p0, Leh;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-static {v0}, Lfp;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lei;

    iget-object v1, p0, Leh;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-direct {v0, v1}, Lei;-><init>(Lcom/kms/gui/WelcomeActivity;)V

    .line 169
    new-instance v1, Leb;

    iget-object v2, p0, Leh;->a:Lcom/kms/gui/WelcomeActivity;

    iget-object v3, p0, Leh;->a:Lcom/kms/gui/WelcomeActivity;

    const v4, 0x7f080287

    invoke-virtual {v3, v4}, Lcom/kms/gui/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v5, v3}, Leb;-><init>(Landroid/app/Activity;Lej;ILjava/lang/String;)V

    invoke-virtual {v1}, Leb;->a()V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Leh;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-static {v0, v5}, Lcom/kms/gui/WelcomeActivity;->a(Lcom/kms/gui/WelcomeActivity;Z)V

    goto :goto_0
.end method
