.class Lcom/ui/LapseIt/list/ListQuickAction$4;
.super Ljava/lang/Object;
.source "ListQuickAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/list/ListQuickAction;->buildNoVideoAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/list/ListQuickAction;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/list/ListQuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/list/ListQuickAction$4;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 408
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 409
    return-void
.end method
