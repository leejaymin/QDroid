.class Lcom/superdroid/util/DialogHelper$1;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Lcom/superdroid/util/DialogAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/util/DialogHelper;->showTipsWithNerverAskMeDialog(Landroid/content/Context;ILjava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$preferenceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/util/DialogHelper$1;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/superdroid/util/DialogHelper$1;->val$preferenceName:Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/superdroid/util/DialogHelper$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/superdroid/util/DialogHelper$1;->val$preferenceName:Ljava/lang/String;

    #calls: Lcom/superdroid/util/DialogHelper;->setNeverAskMeAgain(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/superdroid/util/DialogHelper;->access$0(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method
