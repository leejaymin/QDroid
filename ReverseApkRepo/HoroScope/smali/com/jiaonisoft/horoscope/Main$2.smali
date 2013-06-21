.class Lcom/jiaonisoft/horoscope/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiaonisoft/horoscope/Main;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiaonisoft/horoscope/Main;


# direct methods
.method constructor <init>(Lcom/jiaonisoft/horoscope/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jiaonisoft/horoscope/Main$2;->this$0:Lcom/jiaonisoft/horoscope/Main;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    iget-object v0, p0, Lcom/jiaonisoft/horoscope/Main$2;->this$0:Lcom/jiaonisoft/horoscope/Main;

    #getter for: Lcom/jiaonisoft/horoscope/Main;->checkedId:I
    invoke-static {v0}, Lcom/jiaonisoft/horoscope/Main;->access$1(Lcom/jiaonisoft/horoscope/Main;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/jiaonisoft/horoscope/Main$2;->this$0:Lcom/jiaonisoft/horoscope/Main;

    const/4 v1, 0x0

    const/4 v2, -0x1

    #calls: Lcom/jiaonisoft/horoscope/Main;->saveProference(ZI)V
    invoke-static {v0, v1, v2}, Lcom/jiaonisoft/horoscope/Main;->access$2(Lcom/jiaonisoft/horoscope/Main;ZI)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/jiaonisoft/horoscope/Main$2;->this$0:Lcom/jiaonisoft/horoscope/Main;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jiaonisoft/horoscope/Main$2;->this$0:Lcom/jiaonisoft/horoscope/Main;

    #getter for: Lcom/jiaonisoft/horoscope/Main;->checkedId:I
    invoke-static {v2}, Lcom/jiaonisoft/horoscope/Main;->access$1(Lcom/jiaonisoft/horoscope/Main;)I

    move-result v2

    #calls: Lcom/jiaonisoft/horoscope/Main;->saveProference(ZI)V
    invoke-static {v0, v1, v2}, Lcom/jiaonisoft/horoscope/Main;->access$2(Lcom/jiaonisoft/horoscope/Main;ZI)V

    goto :goto_0
.end method
