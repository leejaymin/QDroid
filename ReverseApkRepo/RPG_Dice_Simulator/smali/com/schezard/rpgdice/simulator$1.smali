.class Lcom/schezard/rpgdice/simulator$1;
.super Ljava/lang/Object;
.source "simulator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/schezard/rpgdice/simulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/schezard/rpgdice/simulator;


# direct methods
.method constructor <init>(Lcom/schezard/rpgdice/simulator;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/schezard/rpgdice/simulator$1;->this$0:Lcom/schezard/rpgdice/simulator;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/schezard/rpgdice/simulator$1;->this$0:Lcom/schezard/rpgdice/simulator;

    #getter for: Lcom/schezard/rpgdice/simulator;->NumbersDice:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/schezard/rpgdice/simulator;->access$0(Lcom/schezard/rpgdice/simulator;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method
