.class Lorg/armyapp/marinecorps/MainActivity$10;
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
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity$10;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 233
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$10;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    invoke-virtual {v0}, Lorg/armyapp/marinecorps/MainActivity;->finish()V

    .line 235
    return-void
.end method
