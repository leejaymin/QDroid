.class final Lbv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lbt;


# direct methods
.method constructor <init>(Lbt;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lbv;->b:Lbt;

    iput p2, p0, Lbv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lbv;->b:Lbt;

    iget-object v0, v0, Lbt;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    iget v1, p0, Lbv;->a:I

    invoke-static {v0, p1, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;Landroid/view/View;I)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method
