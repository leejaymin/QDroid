.class Lcom/rookiestudio/perfectviewer/TUtility$3;
.super Ljava/lang/Object;
.source "TUtility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TUtility;->ShowWarning(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Parent:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TUtility$3;->val$Parent:Landroid/app/Activity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 162
    new-instance v0, Lcom/rookiestudio/perfectviewer/TQuickSetup;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TUtility$3;->val$Parent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickSetup;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, QuickSetup:Lcom/rookiestudio/perfectviewer/TQuickSetup;
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->show()V

    .line 164
    return-void
.end method
