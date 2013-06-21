.class public final Lef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/WelcomeActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lef;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lef;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-static {v0}, Lcom/kms/gui/WelcomeActivity;->b(Lcom/kms/gui/WelcomeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lef;->a:Lcom/kms/gui/WelcomeActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/kms/gui/WelcomeActivity;->showDialog(I)V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lef;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-static {v0}, Lcom/kms/gui/WelcomeActivity;->c(Lcom/kms/gui/WelcomeActivity;)V

    goto :goto_0
.end method
