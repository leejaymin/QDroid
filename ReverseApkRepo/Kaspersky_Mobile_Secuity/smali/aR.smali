.class public final LaR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/additional/gui/AboutActivity;


# direct methods
.method public constructor <init>(Lcom/kms/additional/gui/AboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, LaR;->a:Lcom/kms/additional/gui/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, LaR;->a:Lcom/kms/additional/gui/AboutActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/additional/gui/AboutActivity;->showDialog(I)V

    .line 42
    return-void
.end method
