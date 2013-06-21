.class final Lde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Ldd;


# direct methods
.method constructor <init>(Ldd;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lde;->a:Ldd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 257
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 266
    iget-object v1, p0, Lde;->a:Ldd;

    iget-object v1, v1, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->b(I)Z

    move-result v0

    goto :goto_0
.end method
