.class Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->addGLSurfaceView(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;


# direct methods
.method constructor <init>(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI$1;->this$0:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI$1;->this$0:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;

    iget-object v0, v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    iget-object v0, v0, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->iActivityRenderer:Lcom/adobe/ttpixel/extension/ActivityRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/ActivityRenderer;->setFirstDelay(Z)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI$1;->this$0:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;

    iget-object v0, v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->requestRender()V

    return-void
.end method
