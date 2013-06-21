.class Lelectrum2/drums/recordactivity$4;
.super Ljava/lang/Object;
.source "recordactivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/recordactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/recordactivity;


# direct methods
.method constructor <init>(Lelectrum2/drums/recordactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/recordactivity$4;->this$0:Lelectrum2/drums/recordactivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 175
    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lelectrum2/drums/recordactivity$4;->this$0:Lelectrum2/drums/recordactivity;

    iget v2, v2, Lelectrum2/drums/recordactivity;->countdownval:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 176
    .local v1, tempint:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, countdownstring:Ljava/lang/String;
    iget-object v2, p0, Lelectrum2/drums/recordactivity$4;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v2, v2, Lelectrum2/drums/recordactivity;->countdown:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method
