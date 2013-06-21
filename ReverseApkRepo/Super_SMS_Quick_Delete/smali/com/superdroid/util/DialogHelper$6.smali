.class Lcom/superdroid/util/DialogHelper$6;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/util/DialogHelper;->showButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/superdroid/util/DialogAction;Lcom/superdroid/util/DialogAction;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$action2:Lcom/superdroid/util/DialogAction;


# direct methods
.method constructor <init>(Lcom/superdroid/util/DialogAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/util/DialogHelper$6;->val$action2:Lcom/superdroid/util/DialogAction;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "d"
    .parameter "whichButton"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/superdroid/util/DialogHelper$6;->val$action2:Lcom/superdroid/util/DialogAction;

    invoke-interface {v0}, Lcom/superdroid/util/DialogAction;->doAction()V

    .line 136
    return-void
.end method
