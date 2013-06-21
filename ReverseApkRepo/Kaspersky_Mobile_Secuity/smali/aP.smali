.class public final LaP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private synthetic a:Lcom/kms/activation/gui/EnterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/kms/activation/gui/EnterCodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, LaP;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const v0, 0x1020022

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, LaP;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 119
    :cond_0
    return-void
.end method
