.class public final Lbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lbq;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lbq;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->showDialog(I)V

    .line 183
    return-void
.end method
