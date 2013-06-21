.class public final Leg;
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
    .line 182
    iput-object p1, p0, Leg;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Leg;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-virtual {v0}, Lcom/kms/gui/WelcomeActivity;->finish()V

    .line 188
    return-void
.end method
