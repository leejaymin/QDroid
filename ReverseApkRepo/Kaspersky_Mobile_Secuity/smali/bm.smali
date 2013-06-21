.class public final Lbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lbm;->a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lbm;->a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->finish()V

    .line 26
    return-void
.end method
