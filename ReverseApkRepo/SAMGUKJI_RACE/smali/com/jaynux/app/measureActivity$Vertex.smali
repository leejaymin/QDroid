.class public Lcom/jaynux/app/measureActivity$Vertex;
.super Ljava/lang/Object;
.source "measureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/measureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertex"
.end annotation


# instance fields
.field Draw:Z

.field final synthetic this$0:Lcom/jaynux/app/measureActivity;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/jaynux/app/measureActivity;FFZ)V
    .locals 0
    .parameter
    .parameter "ax"
    .parameter "ay"
    .parameter "ad"

    .prologue
    .line 757
    iput-object p1, p0, Lcom/jaynux/app/measureActivity$Vertex;->this$0:Lcom/jaynux/app/measureActivity;

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput p2, p0, Lcom/jaynux/app/measureActivity$Vertex;->x:F

    .line 755
    iput p3, p0, Lcom/jaynux/app/measureActivity$Vertex;->y:F

    .line 756
    iput-boolean p4, p0, Lcom/jaynux/app/measureActivity$Vertex;->Draw:Z

    return-void
.end method
