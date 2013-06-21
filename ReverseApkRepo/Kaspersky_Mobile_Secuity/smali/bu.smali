.class final Lbu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lbt;


# direct methods
.method constructor <init>(Lbt;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lbu;->b:Lbt;

    iput p2, p0, Lbu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lbu;->b:Lbt;

    iget-object v0, v0, Lbt;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    iget v1, p0, Lbu;->a:I

    invoke-static {v0, p1, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;Landroid/view/View;I)V

    .line 101
    return-void
.end method
