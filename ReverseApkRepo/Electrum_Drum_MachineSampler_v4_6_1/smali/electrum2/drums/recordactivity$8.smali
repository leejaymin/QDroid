.class Lelectrum2/drums/recordactivity$8;
.super Ljava/lang/Object;
.source "recordactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lelectrum2/drums/recordactivity$8;->this$0:Lelectrum2/drums/recordactivity;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 348
    const-string v0, ""

    sput-object v0, Lelectrum2/drums/globalSounds;->recordedfilename:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lelectrum2/drums/recordactivity$8;->this$0:Lelectrum2/drums/recordactivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lelectrum2/drums/recordactivity;->setResult(ILandroid/content/Intent;)V

    .line 352
    iget-object v0, p0, Lelectrum2/drums/recordactivity$8;->this$0:Lelectrum2/drums/recordactivity;

    invoke-virtual {v0}, Lelectrum2/drums/recordactivity;->finish()V

    .line 355
    return-void
.end method
