.class Lelectrum2/drums/recordactivity$2;
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
    iput-object p1, p0, Lelectrum2/drums/recordactivity$2;->this$0:Lelectrum2/drums/recordactivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lelectrum2/drums/recordactivity$2;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->recordstatus:Landroid/widget/TextView;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$2;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->statustext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method
