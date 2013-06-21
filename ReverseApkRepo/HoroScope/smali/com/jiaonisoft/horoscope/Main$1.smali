.class Lcom/jiaonisoft/horoscope/Main$1;
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
    iput-object p1, p0, Lcom/jiaonisoft/horoscope/Main$1;->this$0:Lcom/jiaonisoft/horoscope/Main;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiaonisoft/horoscope/Main$1;->this$0:Lcom/jiaonisoft/horoscope/Main;

    #setter for: Lcom/jiaonisoft/horoscope/Main;->checkedId:I
    invoke-static {v0, p2}, Lcom/jiaonisoft/horoscope/Main;->access$0(Lcom/jiaonisoft/horoscope/Main;I)V

    .line 55
    return-void
.end method
