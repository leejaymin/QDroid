.class Lcom/ui/LapseIt/project/InfoView$2;
.super Ljava/lang/Object;
.source "InfoView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/InfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/InfoView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/InfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/InfoView$2;->this$0:Lcom/ui/LapseIt/project/InfoView;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_0
    return-void

    .line 270
    :pswitch_0
    invoke-static {p2}, Lcom/ui/LapseIt/project/ProjectPreview;->setLoop(Z)V

    goto :goto_0

    .line 274
    :pswitch_1
    sput-boolean p2, Lui/utils/ImageUtils;->flipX:Z

    .line 275
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->drawBitmap()V

    goto :goto_0

    .line 279
    :pswitch_2
    sput-boolean p2, Lui/utils/ImageUtils;->flipY:Z

    .line 280
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->drawBitmap()V

    goto :goto_0

    .line 284
    :pswitch_3
    invoke-static {p2}, Lcom/ui/LapseIt/project/ProjectPreview;->setBackwards(Z)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x7f0b002b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
