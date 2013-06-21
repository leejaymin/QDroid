.class Lcom/fleapapa/helper/CallMan$12;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->promptUrgency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$12;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichMyImageButton"

    .prologue
    .line 422
    sget-object v0, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    const-string v1, "options"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 423
    return-void
.end method
