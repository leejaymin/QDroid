.class Lorg/armyapp/marinecorps/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/armyapp/marinecorps/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/armyapp/marinecorps/MainActivity;


# direct methods
.method constructor <init>(Lorg/armyapp/marinecorps/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity$6;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 197
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$6;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f030007

    invoke-virtual {v1, v2}, Lorg/armyapp/marinecorps/MainActivity;->setContentView(I)V

    .line 198
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$6;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 199
    .local v0, BackButton:Landroid/widget/Button;
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$6;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->BackListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/armyapp/marinecorps/MainActivity;->access$27(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method
