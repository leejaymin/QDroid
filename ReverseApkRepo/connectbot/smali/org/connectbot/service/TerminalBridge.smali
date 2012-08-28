.class public Lorg/connectbot/service/TerminalBridge;
.super Ljava/lang/Object;
.source "TerminalBridge.java"

# interfaces
.implements Lde/mud/terminal/VDUDisplay;


# static fields
.field private static urlPattern:Ljava/util/regex/Pattern;


# instance fields
.field private awaitingClose:Z

.field public bitmap:Landroid/graphics/Bitmap;

.field public buffer:Lde/mud/terminal/VDUBuffer;

.field private final canvas:Landroid/graphics/Canvas;

.field public charHeight:I

.field private charTop:I

.field public charWidth:I

.field private clipboard:Landroid/text/ClipboardManager;

.field public color:[Ljava/lang/Integer;

.field private columns:I

.field public defaultBg:I

.field public defaultFg:I

.field final defaultPaint:Landroid/graphics/Paint;

.field protected disconnectListener:Lorg/connectbot/service/BridgeDisconnectedListener;

.field private disconnected:Z

.field private final emulation:Ljava/lang/String;

.field private fontSize:F

.field private final fontSizeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/service/FontSizeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private forcedSize:Z

.field private fullRedraw:Z

.field public host:Lorg/connectbot/bean/HostBean;

.field final keyListener:Lorg/connectbot/service/TerminalKeyListener;

.field private final localOutput:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final manager:Lorg/connectbot/service/TerminalManager;

.field private parent:Lorg/connectbot/TerminalView;

.field public promptHelper:Lorg/connectbot/service/PromptHelper;

.field private relay:Lorg/connectbot/service/Relay;

.field private rows:I

.field private final scrollback:I

.field private selectingForCopy:Z

.field private final selectionArea:Lorg/connectbot/bean/SelectionArea;

.field transport:Lorg/connectbot/transport/AbsTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    sput-object v0, Lorg/connectbot/service/TerminalBridge;->urlPattern:Ljava/util/regex/Pattern;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x7

    iput v0, p0, Lorg/connectbot/service/TerminalBridge;->defaultFg:I

    .line 70
    iput v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultBg:I

    .line 85
    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    .line 86
    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 88
    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;

    .line 89
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    .line 91
    iput-boolean v1, p0, Lorg/connectbot/service/TerminalBridge;->disconnected:Z

    .line 92
    iput-boolean v1, p0, Lorg/connectbot/service/TerminalBridge;->awaitingClose:Z

    .line 94
    iput-boolean v1, p0, Lorg/connectbot/service/TerminalBridge;->forcedSize:Z

    .line 100
    iput-boolean v1, p0, Lorg/connectbot/service/TerminalBridge;->selectingForCopy:Z

    .line 106
    iput v2, p0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    .line 107
    iput v2, p0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    .line 108
    iput v2, p0, Lorg/connectbot/service/TerminalBridge;->charTop:I

    .line 110
    const/high16 v0, -0x4080

    iput v0, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    .line 120
    iput-boolean v1, p0, Lorg/connectbot/service/TerminalBridge;->fullRedraw:Z

    .line 124
    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->disconnectListener:Lorg/connectbot/service/BridgeDisconnectedListener;

    .line 130
    new-instance v0, Lorg/connectbot/service/TerminalBridge$1;

    invoke-direct {v0, p0}, Lorg/connectbot/service/TerminalBridge$1;-><init>(Lorg/connectbot/service/TerminalBridge;)V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 143
    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->emulation:Ljava/lang/String;

    .line 144
    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    .line 148
    new-instance v0, Lorg/connectbot/bean/SelectionArea;

    invoke-direct {v0}, Lorg/connectbot/bean/SelectionArea;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lorg/connectbot/service/TerminalBridge;->scrollback:I

    .line 151
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->localOutput:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->fontSizeChangedListeners:Ljava/util/List;

    .line 155
    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    .line 157
    new-instance v0, Lorg/connectbot/service/TerminalKeyListener;

    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/connectbot/service/TerminalKeyListener;-><init>(Lorg/connectbot/service/TerminalManager;Lorg/connectbot/service/TerminalBridge;Lde/mud/terminal/VDUBuffer;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->keyListener:Lorg/connectbot/service/TerminalKeyListener;

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/connectbot/service/TerminalManager;Lorg/connectbot/bean/HostBean;)V
    .locals 6
    .parameter "manager"
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v1, 0x7

    iput v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultFg:I

    .line 70
    iput v3, p0, Lorg/connectbot/service/TerminalBridge;->defaultBg:I

    .line 85
    iput-object v2, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    .line 86
    iput-object v2, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 88
    iput-object v2, p0, Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;

    .line 89
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    .line 91
    iput-boolean v3, p0, Lorg/connectbot/service/TerminalBridge;->disconnected:Z

    .line 92
    iput-boolean v3, p0, Lorg/connectbot/service/TerminalBridge;->awaitingClose:Z

    .line 94
    iput-boolean v3, p0, Lorg/connectbot/service/TerminalBridge;->forcedSize:Z

    .line 100
    iput-boolean v3, p0, Lorg/connectbot/service/TerminalBridge;->selectingForCopy:Z

    .line 106
    iput v4, p0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    .line 107
    iput v4, p0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    .line 108
    iput v4, p0, Lorg/connectbot/service/TerminalBridge;->charTop:I

    .line 110
    const/high16 v1, -0x4080

    iput v1, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    .line 120
    iput-boolean v3, p0, Lorg/connectbot/service/TerminalBridge;->fullRedraw:Z

    .line 124
    iput-object v2, p0, Lorg/connectbot/service/TerminalBridge;->disconnectListener:Lorg/connectbot/service/BridgeDisconnectedListener;

    .line 166
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    .line 167
    iput-object p2, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    .line 169
    invoke-virtual {p1}, Lorg/connectbot/service/TerminalManager;->getEmulation()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->emulation:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Lorg/connectbot/service/TerminalManager;->getScrollback()I

    move-result v1

    iput v1, p0, Lorg/connectbot/service/TerminalBridge;->scrollback:I

    .line 173
    new-instance v1, Lorg/connectbot/service/PromptHelper;

    invoke-direct {v1, p0}, Lorg/connectbot/service/PromptHelper;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    .line 176
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    .line 177
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 179
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 181
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->localOutput:Ljava/util/List;

    .line 183
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->fontSizeChangedListeners:Ljava/util/List;

    .line 185
    invoke-virtual {p2}, Lorg/connectbot/bean/HostBean;->getFontSize()I

    move-result v0

    .line 186
    .local v0, hostFontSize:I
    if-gtz v0, :cond_0

    .line 187
    const/16 v0, 0xa

    .line 188
    :cond_0
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lorg/connectbot/service/TerminalBridge;->setFontSize(F)V

    .line 192
    new-instance v1, Lorg/connectbot/service/TerminalBridge$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/connectbot/service/TerminalBridge$2;-><init>(Lorg/connectbot/service/TerminalBridge;Lorg/connectbot/service/TerminalManager;Lorg/connectbot/bean/HostBean;)V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 238
    invoke-virtual {p2}, Lorg/connectbot/bean/HostBean;->getWantSession()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v2, p0, Lorg/connectbot/service/TerminalBridge;->scrollback:I

    invoke-virtual {v1, v2}, Lde/mud/terminal/VDUBuffer;->setBufferSize(I)V

    .line 243
    :goto_0
    invoke-virtual {p0}, Lorg/connectbot/service/TerminalBridge;->resetColors()V

    .line 244
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1, p0}, Lde/mud/terminal/VDUBuffer;->setDisplay(Lde/mud/terminal/VDUDisplay;)V

    .line 246
    new-instance v1, Lorg/connectbot/bean/SelectionArea;

    invoke-direct {v1}, Lorg/connectbot/bean/SelectionArea;-><init>()V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    .line 248
    new-instance v1, Lorg/connectbot/service/TerminalKeyListener;

    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {p2}, Lorg/connectbot/bean/HostBean;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, p0, v2, v3}, Lorg/connectbot/service/TerminalKeyListener;-><init>(Lorg/connectbot/service/TerminalManager;Lorg/connectbot/service/TerminalBridge;Lde/mud/terminal/VDUBuffer;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->keyListener:Lorg/connectbot/service/TerminalKeyListener;

    .line 249
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1, v3}, Lde/mud/terminal/VDUBuffer;->setBufferSize(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/connectbot/service/TerminalBridge;)Lorg/connectbot/TerminalView;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;

    return-object v0
.end method

.method static synthetic access$1(Lorg/connectbot/service/TerminalBridge;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lorg/connectbot/service/TerminalBridge;->awaitingClose:Z

    return-void
.end method

.method private discardBitmap()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 643
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    .line 644
    return-void
.end method

.method private fontSizeCompare(FIIII)I
    .locals 9
    .parameter "size"
    .parameter "cols"
    .parameter "rows"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 818
    iget-object v4, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 819
    iget-object v4, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 821
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    const/4 v4, 0x1

    new-array v3, v4, [F

    .line 822
    .local v3, widths:[F
    iget-object v4, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    const-string v5, "X"

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 823
    const/4 v4, 0x0

    aget v4, v3, v4

    float-to-int v4, v4

    mul-int v2, v4, p2

    .line 824
    .local v2, termWidth:I
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v1, v4, p3

    .line 826
    .local v1, termHeight:I
    const-string v4, "fontsize"

    const-string v5, "font size %f resulted in %d x %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    if-gt v2, p4, :cond_0

    if-le v1, p5, :cond_1

    .line 830
    :cond_0
    const/4 v4, 0x1

    .line 835
    :goto_0
    return v4

    .line 832
    :cond_1
    if-eq v2, p4, :cond_2

    if-ne v1, p5, :cond_3

    .line 833
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 835
    :cond_3
    const/4 v4, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addFontSizeChangedListener(Lorg/connectbot/service/FontSizeChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 521
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->fontSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method

.method public addPortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 1
    .parameter "portForward"

    .prologue
    .line 851
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0, p1}, Lorg/connectbot/transport/AbsTransport;->addPortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    move-result v0

    return v0
.end method

.method public canFowardPorts()Z
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0}, Lorg/connectbot/transport/AbsTransport;->canForwardPorts()Z

    move-result v0

    return v0
.end method

.method public decreaseFontSize()V
    .locals 2

    .prologue
    .line 1016
    iget v0, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    const/high16 v1, 0x4000

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/connectbot/service/TerminalBridge;->setFontSize(F)V

    .line 1017
    return-void
.end method

.method public disablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 2
    .parameter "portForward"

    .prologue
    .line 892
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0}, Lorg/connectbot/transport/AbsTransport;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    const-string v0, "ConnectBot.TerminalBridge"

    const-string v1, "Attempt to disable port forward while not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0, p1}, Lorg/connectbot/transport/AbsTransport;->disablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchDisconnect(Z)V
    .locals 7
    .parameter "immediate"

    .prologue
    const/4 v6, 0x1

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iget-boolean v3, p0, Lorg/connectbot/service/TerminalBridge;->disconnected:Z

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    .line 413
    monitor-exit p0

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/connectbot/service/TerminalBridge;->disconnected:Z

    .line 411
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    invoke-virtual {v3}, Lorg/connectbot/service/PromptHelper;->cancelPrompt()V

    .line 423
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lorg/connectbot/service/TerminalBridge$5;

    invoke-direct {v3, p0}, Lorg/connectbot/service/TerminalBridge$5;-><init>(Lorg/connectbot/service/TerminalBridge;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 429
    .local v1, disconnectThread:Ljava/lang/Thread;
    const-string v3, "Disconnect"

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 432
    if-eqz p1, :cond_2

    .line 433
    iput-boolean v6, p0, Lorg/connectbot/service/TerminalBridge;->awaitingClose:Z

    .line 434
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->disconnectListener:Lorg/connectbot/service/BridgeDisconnectedListener;

    if-eqz v3, :cond_0

    .line 435
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->disconnectListener:Lorg/connectbot/service/BridgeDisconnectedListener;

    invoke-interface {v3, p0}, Lorg/connectbot/service/BridgeDisconnectedListener;->onDisconnected(Lorg/connectbot/service/TerminalBridge;)V

    goto :goto_0

    .line 411
    .end local v1           #disconnectThread:Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 438
    .restart local v1       #disconnectThread:Ljava/lang/Thread;
    :cond_2
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v3, v3, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v4, 0x7f080044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, line:Ljava/lang/String;
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v3, Lde/mud/terminal/vt320;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    .line 441
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v3}, Lorg/connectbot/bean/HostBean;->getStayConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 442
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v3, p0}, Lorg/connectbot/service/TerminalManager;->requestReconnect(Lorg/connectbot/service/TerminalBridge;)V

    goto :goto_0

    .line 445
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lorg/connectbot/service/TerminalBridge$6;

    invoke-direct {v3, p0}, Lorg/connectbot/service/TerminalBridge$6;-><init>(Lorg/connectbot/service/TerminalBridge;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 458
    .local v0, disconnectPromptThread:Ljava/lang/Thread;
    const-string v3, "DisconnectPrompt"

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 460
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public enablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 2
    .parameter "portForward"

    .prologue
    .line 877
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0}, Lorg/connectbot/transport/AbsTransport;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    const-string v0, "ConnectBot.TerminalBridge"

    const-string v1, "Attempt to enable port forward while not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v0, 0x0

    .line 882
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0, p1}, Lorg/connectbot/transport/AbsTransport;->enablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->relay:Lorg/connectbot/service/Relay;

    invoke-virtual {v0}, Lorg/connectbot/service/Relay;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getKeyHandler()Lorg/connectbot/service/TerminalKeyListener;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->keyListener:Lorg/connectbot/service/TerminalKeyListener;

    return-object v0
.end method

.method public getPortForwards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PortForwardBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0}, Lorg/connectbot/transport/AbsTransport;->getPortForwards()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPromptHelper()Lorg/connectbot/service/PromptHelper;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    return-object v0
.end method

.method public getSelectionArea()Lorg/connectbot/bean/SelectionArea;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    return-object v0
.end method

.method public increaseFontSize()V
    .locals 2

    .prologue
    .line 1009
    iget v0, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    const/high16 v1, 0x4000

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/connectbot/service/TerminalBridge;->setFontSize(F)V

    .line 1010
    return-void
.end method

.method public injectString(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 342
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/connectbot/service/TerminalBridge$4;

    invoke-direct {v1, p0, p1}, Lorg/connectbot/service/TerminalBridge$4;-><init>(Lorg/connectbot/service/TerminalBridge;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 354
    .local v0, injectStringThread:Ljava/lang/Thread;
    const-string v1, "InjectString"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public isAwaitingClose()Z
    .locals 1

    .prologue
    .line 904
    iget-boolean v0, p0, Lorg/connectbot/service/TerminalBridge;->awaitingClose:Z

    return v0
.end method

.method public isDisconnected()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Lorg/connectbot/service/TerminalBridge;->disconnected:Z

    return v0
.end method

.method public isSelectingForCopy()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lorg/connectbot/service/TerminalBridge;->selectingForCopy:Z

    return v0
.end method

.method public isSessionOpen()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0}, Lorg/connectbot/transport/AbsTransport;->isSessionOpen()Z

    move-result v0

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingNetwork()Z
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0}, Lorg/connectbot/transport/AbsTransport;->usesNetwork()Z

    move-result v0

    return v0
.end method

.method public onConnected()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 363
    iput-boolean v3, p0, Lorg/connectbot/service/TerminalBridge;->disconnected:Z

    .line 365
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v1, Lde/mud/terminal/vt320;

    invoke-virtual {v1}, Lde/mud/terminal/vt320;->reset()V

    .line 368
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->localOutput:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 372
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v1, Lde/mud/terminal/vt320;

    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->emulation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lde/mud/terminal/vt320;->setAnswerBack(Ljava/lang/String;)V

    .line 374
    const-string v1, "backspace"

    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v2}, Lorg/connectbot/bean/HostBean;->getDelKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v1, Lde/mud/terminal/vt320;

    invoke-virtual {v1, v5}, Lde/mud/terminal/vt320;->setBackspace(I)V

    .line 380
    :goto_0
    new-instance v2, Lorg/connectbot/service/Relay;

    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v1, Lde/mud/terminal/vt320;

    iget-object v4, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v4}, Lorg/connectbot/bean/HostBean;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v1, v4}, Lorg/connectbot/service/Relay;-><init>(Lorg/connectbot/service/TerminalBridge;Lorg/connectbot/transport/AbsTransport;Lde/mud/terminal/vt320;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/connectbot/service/TerminalBridge;->relay:Lorg/connectbot/service/Relay;

    .line 381
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->relay:Lorg/connectbot/service/Relay;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 382
    .local v0, relayThread:Ljava/lang/Thread;
    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 383
    const-string v1, "Relay"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 387
    iget v1, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    invoke-virtual {p0, v1}, Lorg/connectbot/service/TerminalBridge;->setFontSize(F)V

    .line 390
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v1}, Lorg/connectbot/bean/HostBean;->getPostLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/connectbot/service/TerminalBridge;->injectString(Ljava/lang/String;)V

    .line 391
    return-void

    .line 377
    .end local v0           #relayThread:Ljava/lang/Thread;
    :cond_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v1, Lde/mud/terminal/vt320;

    invoke-virtual {v1, v3}, Lde/mud/terminal/vt320;->setBackspace(I)V

    goto :goto_0
.end method

.method public onDraw()V
    .locals 18

    .prologue
    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 663
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v1, v1, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/connectbot/service/TerminalBridge;->fullRedraw:Z

    if-nez v1, :cond_0

    const/4 v10, 0x0

    .line 664
    .local v10, entireDirty:Z
    :goto_0
    const/4 v13, 0x0

    .line 667
    .local v13, isWideCharacter:Z
    const/4 v14, 0x0

    .local v14, l:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v1, v1, Lde/mud/terminal/VDUBuffer;->height:I

    if-lt v14, v1, :cond_1

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v1, v1, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v2, 0x0

    const/4 v5, 0x0

    aput-boolean v5, v1, v2

    .line 662
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/connectbot/service/TerminalBridge;->fullRedraw:Z

    .line 761
    return-void

    .line 663
    .end local v10           #entireDirty:Z
    .end local v13           #isWideCharacter:Z
    .end local v14           #l:I
    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    .line 671
    .restart local v10       #entireDirty:Z
    .restart local v13       #isWideCharacter:Z
    .restart local v14       #l:I
    :cond_1
    if-nez v10, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v1, v1, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int/lit8 v2, v14, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    .line 667
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 674
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v1, v1, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int/lit8 v2, v14, 0x1

    const/4 v5, 0x0

    aput-boolean v5, v1, v2

    .line 677
    const/4 v3, 0x0

    .local v3, c:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v1, v1, Lde/mud/terminal/VDUBuffer;->width:I

    if-ge v3, v1, :cond_2

    .line 678
    const/4 v4, 0x0

    .line 679
    .local v4, addr:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v1, v1, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v2, v2, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v2, v14

    aget-object v1, v1, v2

    aget v9, v1, v3

    .line 682
    .local v9, currAttr:I
    move-object/from16 v0, p0

    iget v12, v0, Lorg/connectbot/service/TerminalBridge;->defaultFg:I

    .line 685
    .local v12, fgcolor:I
    and-int/lit16 v1, v9, 0x3fe0

    if-eqz v1, :cond_4

    .line 686
    and-int/lit16 v1, v9, 0x3fe0

    shr-int/lit8 v1, v1, 0x5

    add-int/lit8 v12, v1, -0x1

    .line 688
    :cond_4
    const/16 v1, 0x8

    if-ge v12, v1, :cond_9

    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_9

    .line 689
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->color:[Ljava/lang/Integer;

    add-int/lit8 v2, v12, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 695
    .local v11, fg:I
    :goto_3
    const v1, 0x7fc000

    and-int/2addr v1, v9

    if-eqz v1, :cond_a

    .line 696
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->color:[Ljava/lang/Integer;

    const v2, 0x7fc000

    and-int/2addr v2, v9

    shr-int/lit8 v2, v2, 0xe

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 701
    .local v8, bg:I
    :goto_4
    and-int/lit8 v1, v9, 0x4

    if-eqz v1, :cond_5

    .line 702
    move v15, v8

    .line 703
    .local v15, swapc:I
    move v8, v11

    .line 704
    move v11, v15

    .line 708
    .end local v15           #swapc:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    and-int/lit8 v1, v9, 0x2

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 710
    const/high16 v1, 0x800

    and-int/2addr v1, v9

    if-eqz v1, :cond_c

    const/4 v13, 0x1

    .line 712
    :goto_6
    if-eqz v13, :cond_e

    .line 713
    add-int/lit8 v4, v4, 0x1

    .line 723
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 726
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 727
    if-eqz v13, :cond_f

    .line 728
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    mul-int/2addr v2, v3

    .line 729
    move-object/from16 v0, p0

    iget v5, v0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    mul-int/2addr v5, v14

    .line 730
    add-int/lit8 v6, v3, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    mul-int/2addr v6, v7

    .line 731
    add-int/lit8 v7, v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    move/from16 v17, v0

    mul-int v7, v7, v17

    .line 728
    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 738
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 742
    and-int/lit8 v1, v9, 0x10

    if-nez v1, :cond_7

    .line 743
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v2, v2, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v5, v5, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v5, v14

    aget-object v2, v2, v5

    .line 744
    move-object/from16 v0, p0

    iget v5, v0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    mul-int/2addr v5, v3

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    mul-int/2addr v6, v14

    move-object/from16 v0, p0

    iget v7, v0, Lorg/connectbot/service/TerminalBridge;->charTop:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 745
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    .line 743
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 748
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 751
    add-int/lit8 v1, v4, -0x1

    add-int/2addr v3, v1

    .line 752
    if-eqz v13, :cond_8

    .line 753
    add-int/lit8 v3, v3, 0x1

    .line 677
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 691
    .end local v8           #bg:I
    .end local v11           #fg:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->color:[Ljava/lang/Integer;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .restart local v11       #fg:I
    goto/16 :goto_3

    .line 698
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->color:[Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/connectbot/service/TerminalBridge;->defaultBg:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .restart local v8       #bg:I
    goto/16 :goto_4

    .line 708
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 710
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 718
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 716
    :cond_e
    add-int v1, v3, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v2, v2, Lde/mud/terminal/VDUBuffer;->width:I

    if-ge v1, v2, :cond_6

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v1, v1, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v2, v2, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v2, v14

    aget-object v1, v1, v2

    add-int v2, v3, v4

    aget v1, v1, v2

    if-eq v1, v9, :cond_d

    goto/16 :goto_7

    .line 733
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    mul-int/2addr v2, v3

    .line 734
    move-object/from16 v0, p0

    iget v5, v0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    mul-int/2addr v5, v14

    .line 735
    add-int v6, v3, v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    mul-int/2addr v6, v7

    .line 736
    add-int/lit8 v7, v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    move/from16 v17, v0

    mul-int v7, v7, v17

    .line 733
    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_8

    .line 662
    .end local v3           #c:I
    .end local v4           #addr:I
    .end local v8           #bg:I
    .end local v9           #currAttr:I
    .end local v10           #entireDirty:Z
    .end local v11           #fg:I
    .end local v12           #fgcolor:I
    .end local v13           #isWideCharacter:Z
    .end local v14           #l:I
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final outputLine(Ljava/lang/String;)V
    .locals 6
    .parameter "line"

    .prologue
    .line 321
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v2}, Lorg/connectbot/transport/AbsTransport;->isSessionOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    const-string v2, "ConnectBot.TerminalBridge"

    const-string v3, "Session established, cannot use outputLine!"

    new-instance v4, Ljava/io/IOException;

    const-string v5, "outputLine call traceback"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    :cond_0
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->localOutput:Ljava/util/List;

    monitor-enter v3

    .line 325
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->localOutput:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v2, Lde/mud/terminal/vt320;

    invoke-virtual {v2, v1}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 333
    .local v0, charArray:[C
    array-length v2, v0

    invoke-virtual {p0, v0, v2}, Lorg/connectbot/service/TerminalBridge;->propagateConsoleText([CI)V

    .line 324
    monitor-exit v3

    .line 335
    return-void

    .line 324
    .end local v0           #charArray:[C
    .end local v1           #s:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final declared-synchronized parentChanged(Lorg/connectbot/TerminalView;)V
    .locals 17
    .parameter "parent"

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v2}, Lorg/connectbot/service/TerminalManager;->isResizeAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 541
    const-string v2, "ConnectBot.TerminalBridge"

    const-string v3, "Resize is not allowed now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 545
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;

    .line 546
    invoke-virtual/range {p1 .. p1}, Lorg/connectbot/TerminalView;->getWidth()I

    move-result v16

    .line 547
    .local v16, width:I
    invoke-virtual/range {p1 .. p1}, Lorg/connectbot/TerminalView;->getHeight()I

    move-result v11

    .line 550
    .local v11, height:I
    if-lez v16, :cond_0

    if-lez v11, :cond_0

    .line 553
    invoke-virtual/range {p1 .. p1}, Lorg/connectbot/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/connectbot/service/TerminalBridge;->clipboard:Landroid/text/ClipboardManager;

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->keyListener:Lorg/connectbot/service/TerminalKeyListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/connectbot/service/TerminalBridge;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v2, v3}, Lorg/connectbot/service/TerminalKeyListener;->setClipboardManager(Landroid/text/ClipboardManager;)V

    .line 556
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/connectbot/service/TerminalBridge;->forcedSize:Z

    if-nez v2, :cond_3

    .line 560
    move-object/from16 v0, p0

    iget v2, v0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    div-int v14, v16, v2

    .line 561
    .local v14, newColumns:I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    div-int v15, v11, v2

    .line 565
    .local v15, newRows:I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/connectbot/service/TerminalBridge;->columns:I

    if-ne v14, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/connectbot/service/TerminalBridge;->rows:I

    if-eq v15, v2, :cond_0

    .line 568
    :cond_2
    move-object/from16 v0, p0

    iput v14, v0, Lorg/connectbot/service/TerminalBridge;->columns:I

    .line 569
    move-object/from16 v0, p0

    iput v15, v0, Lorg/connectbot/service/TerminalBridge;->rows:I

    .line 573
    .end local v14           #newColumns:I
    .end local v15           #newRows:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_a

    const/4 v13, 0x1

    .line 574
    .local v13, newBitmap:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v11, :cond_b

    const/4 v13, 0x0

    .line 577
    :cond_4
    :goto_2
    if-eqz v13, :cond_5

    .line 578
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/service/TerminalBridge;->discardBitmap()V

    .line 579
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 584
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 588
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/connectbot/service/TerminalBridge;->forcedSize:Z

    if-eqz v2, :cond_7

    .line 589
    move-object/from16 v0, p0

    iget v2, v0, Lorg/connectbot/service/TerminalBridge;->columns:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    mul-int/2addr v2, v3

    add-int/lit8 v8, v2, 0x1

    .line 590
    .local v8, borderX:I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/connectbot/service/TerminalBridge;->rows:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    mul-int/2addr v2, v3

    add-int/lit8 v9, v2, 0x1

    .line 592
    .local v9, borderY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 594
    move/from16 v0, v16

    if-lt v0, v8, :cond_6

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    int-to-float v3, v8

    const/4 v4, 0x0

    int-to-float v5, v8

    add-int/lit8 v6, v9, 0x1

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 596
    :cond_6
    if-lt v11, v9, :cond_7

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    int-to-float v4, v9

    add-int/lit8 v5, v8, 0x1

    int-to-float v5, v5

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    .end local v8           #borderX:I
    .end local v9           #borderY:I
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 603
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/connectbot/service/TerminalBridge;->columns:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/connectbot/service/TerminalBridge;->rows:I

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Lde/mud/terminal/VDUBuffer;->setScreenSize(IIZ)V

    .line 602
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 606
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    if-eqz v2, :cond_8

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/connectbot/service/TerminalBridge;->columns:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/connectbot/service/TerminalBridge;->rows:I

    move/from16 v0, v16

    invoke-virtual {v2, v3, v4, v0, v11}, Lorg/connectbot/transport/AbsTransport;->setDimensions(IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 613
    :cond_8
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    if-nez v2, :cond_9

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/connectbot/service/TerminalBridge;->localOutput:Ljava/util/List;

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 615
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v2, Lde/mud/terminal/vt320;

    invoke-virtual {v2}, Lde/mud/terminal/vt320;->reset()V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->localOutput:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 614
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 623
    :cond_9
    const/4 v2, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/connectbot/service/TerminalBridge;->fullRedraw:Z

    .line 624
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 626
    const-string v2, "%d x %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/connectbot/service/TerminalBridge;->columns:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/connectbot/service/TerminalBridge;->rows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/connectbot/TerminalView;->notifyUser(Ljava/lang/String;)V

    .line 628
    const-string v2, "ConnectBot.TerminalBridge"

    const-string v3, "parentChanged() now width=%d, height=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/connectbot/service/TerminalBridge;->columns:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/connectbot/service/TerminalBridge;->rows:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 540
    .end local v11           #height:I
    .end local v13           #newBitmap:Z
    .end local v16           #width:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 573
    .restart local v11       #height:I
    .restart local v16       #width:I
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 575
    .restart local v13       #newBitmap:Z
    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 602
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 608
    :catch_0
    move-exception v10

    .line 609
    .local v10, e:Ljava/lang/Exception;
    :try_start_a
    const-string v2, "ConnectBot.TerminalBridge"

    const-string v3, "Problem while trying to resize screen or PTY"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 617
    .end local v10           #e:Ljava/lang/Exception;
    :cond_c
    :try_start_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 618
    .local v12, line:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v2, Lde/mud/terminal/vt320;

    invoke-virtual {v2, v12}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    goto :goto_4

    .line 614
    .end local v12           #line:Ljava/lang/String;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public propagateConsoleText([CI)V
    .locals 1
    .parameter "rawText"
    .parameter "length"

    .prologue
    .line 655
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;

    invoke-virtual {v0, p1, p2}, Lorg/connectbot/TerminalView;->propagateConsoleText([CI)V

    .line 658
    :cond_0
    return-void
.end method

.method public redraw()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;

    invoke-virtual {v0}, Lorg/connectbot/TerminalView;->postInvalidate()V

    .line 766
    :cond_0
    return-void
.end method

.method public removePortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 1
    .parameter "portForward"

    .prologue
    .line 860
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0, p1}, Lorg/connectbot/transport/AbsTransport;->removePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    move-result v0

    return v0
.end method

.method public final resetColors()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 924
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v1, v1, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v1, v2}, Lorg/connectbot/util/HostDatabase;->getDefaultColorsForScheme(I)[I

    move-result-object v0

    .line 925
    .local v0, defaults:[I
    aget v1, v0, v2

    iput v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultFg:I

    .line 926
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultBg:I

    .line 928
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v1, v1, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v1, v2}, Lorg/connectbot/util/HostDatabase;->getColorsForScheme(I)[Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->color:[Ljava/lang/Integer;

    .line 929
    return-void
.end method

.method public resetScrollPosition()V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v1, v1, Lde/mud/terminal/VDUBuffer;->screenBase:I

    if-eq v0, v1, :cond_0

    .line 1002
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v1, v1, Lde/mud/terminal/VDUBuffer;->screenBase:I

    invoke-virtual {v0, v1}, Lde/mud/terminal/VDUBuffer;->setWindowBase(I)V

    .line 1003
    :cond_0
    return-void
.end method

.method public declared-synchronized resizeComputed(IIII)V
    .locals 10
    .parameter "cols"
    .parameter "rows"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v9, 0x4000

    .line 780
    monitor-enter p0

    const/high16 v1, 0x4100

    .line 781
    .local v1, size:F
    const/high16 v8, 0x4100

    .line 782
    .local v8, step:F
    const/high16 v7, 0x3e00

    .local v7, limit:F
    :goto_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 786
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lorg/connectbot/service/TerminalBridge;->fontSizeCompare(FIIII)I

    move-result v6

    .local v6, direction:I
    if-ltz v6, :cond_0

    .line 789
    if-nez v6, :cond_1

    .line 790
    const-string v0, "fontsize"

    const-string v2, "Found match at %f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    :goto_1
    monitor-exit p0

    return-void

    .line 787
    :cond_0
    add-float/2addr v1, v8

    goto :goto_0

    .line 794
    :cond_1
    div-float/2addr v8, v9

    .line 795
    sub-float/2addr v1, v8

    :goto_2
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 797
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lorg/connectbot/service/TerminalBridge;->fontSizeCompare(FIIII)I

    move-result v6

    if-eqz v6, :cond_2

    .line 798
    cmpl-float v0, v8, v7

    if-gez v0, :cond_4

    .line 807
    :cond_2
    if-lez v6, :cond_3

    .line 808
    sub-float/2addr v1, v8

    .line 810
    :cond_3
    iput p1, p0, Lorg/connectbot/service/TerminalBridge;->columns:I

    .line 811
    iput p2, p0, Lorg/connectbot/service/TerminalBridge;->rows:I

    .line 812
    invoke-virtual {p0, v1}, Lorg/connectbot/service/TerminalBridge;->setFontSize(F)V

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/connectbot/service/TerminalBridge;->forcedSize:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 780
    .end local v6           #direction:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 799
    .restart local v6       #direction:I
    :cond_4
    div-float/2addr v8, v9

    .line 800
    if-lez v6, :cond_5

    .line 801
    sub-float/2addr v1, v8

    goto :goto_2

    .line 803
    :cond_5
    add-float/2addr v1, v8

    goto :goto_2
.end method

.method public scanForURLs()Ljava/util/List;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 937
    new-instance v32, Ljava/util/LinkedList;

    invoke-direct/range {v32 .. v32}, Ljava/util/LinkedList;-><init>()V

    .line 939
    .local v32, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v35, Lorg/connectbot/service/TerminalBridge;->urlPattern:Ljava/util/regex/Pattern;

    if-nez v35, :cond_0

    .line 941
    const-string v25, "[A-Za-z][-+.0-9A-Za-z]*"

    .line 942
    .local v25, scheme:Ljava/lang/String;
    const-string v29, "[-._~0-9A-Za-z]"

    .line 943
    .local v29, unreserved:Ljava/lang/String;
    const-string v21, "%[0-9A-Fa-f]{2}"

    .line 944
    .local v21, pctEncoded:Ljava/lang/String;
    const-string v28, "[!$&\'()*+,;:=]"

    .line 945
    .local v28, subDelims:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|:)*"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 946
    .local v33, userinfo:Ljava/lang/String;
    const-string v8, "[0-9A-Fa-f]{1,4}"

    .line 947
    .local v8, h16:Ljava/lang/String;
    const-string v6, "(?:[0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])"

    .line 948
    .local v6, decOctet:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\\."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\\."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\\."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 949
    .local v12, ipv4address:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 950
    .local v16, ls32:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?:(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "){6}"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 951
    .local v13, ipv6address:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "v[0-9A-Fa-f]+.(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|:)+"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 952
    .local v14, ipvfuture:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "\\[(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")\\]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 953
    .local v11, ipLiteral:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")*"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 954
    .local v24, regName:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 955
    .local v10, host:Ljava/lang/String;
    const-string v22, "[0-9]*"

    .line 956
    .local v22, port:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "@)?"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "(?::"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")?"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 957
    .local v5, authority:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|@)"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 958
    .local v20, pchar:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "*"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 959
    .local v26, segment:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?:/"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")*"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 960
    .local v17, pathAbempty:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "+"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 961
    .local v27, segmentNz:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "/(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "(?:/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")*)?"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 962
    .local v18, pathAbsolute:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "(?:/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")*"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 963
    .local v19, pathRootless:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?://"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 964
    .local v9, hierPart:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|/|\\?)*"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 965
    .local v23, query:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "(?:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "|/|\\?)*"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 966
    .local v7, fragment:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "(?:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")?(?:#"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")?"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 967
    .local v30, uriRegex:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v35

    sput-object v35, Lorg/connectbot/service/TerminalBridge;->urlPattern:Ljava/util/regex/Pattern;

    .line 970
    .end local v5           #authority:Ljava/lang/String;
    .end local v6           #decOctet:Ljava/lang/String;
    .end local v7           #fragment:Ljava/lang/String;
    .end local v8           #h16:Ljava/lang/String;
    .end local v9           #hierPart:Ljava/lang/String;
    .end local v10           #host:Ljava/lang/String;
    .end local v11           #ipLiteral:Ljava/lang/String;
    .end local v12           #ipv4address:Ljava/lang/String;
    .end local v13           #ipv6address:Ljava/lang/String;
    .end local v14           #ipvfuture:Ljava/lang/String;
    .end local v16           #ls32:Ljava/lang/String;
    .end local v17           #pathAbempty:Ljava/lang/String;
    .end local v18           #pathAbsolute:Ljava/lang/String;
    .end local v19           #pathRootless:Ljava/lang/String;
    .end local v20           #pchar:Ljava/lang/String;
    .end local v21           #pctEncoded:Ljava/lang/String;
    .end local v22           #port:Ljava/lang/String;
    .end local v23           #query:Ljava/lang/String;
    .end local v24           #regName:Ljava/lang/String;
    .end local v25           #scheme:Ljava/lang/String;
    .end local v26           #segment:Ljava/lang/String;
    .end local v27           #segmentNz:Ljava/lang/String;
    .end local v28           #subDelims:Ljava/lang/String;
    .end local v29           #unreserved:Ljava/lang/String;
    .end local v30           #uriRegex:Ljava/lang/String;
    .end local v33           #userinfo:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move/from16 v36, v0

    mul-int v35, v35, v36

    move/from16 v0, v35

    new-array v0, v0, [C

    move-object/from16 v34, v0

    .line 971
    .local v34, visibleBuffer:[C
    const/4 v15, 0x0

    .local v15, l:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-lt v15, v0, :cond_1

    .line 975
    sget-object v35, Lorg/connectbot/service/TerminalBridge;->urlPattern:Ljava/util/regex/Pattern;

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v35 .. v36}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    .line 976
    .local v31, urlMatcher:Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v35

    if-nez v35, :cond_2

    .line 979
    return-object v32

    .line 972
    .end local v31           #urlMatcher:Ljava/util/regex/Matcher;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    move/from16 v36, v0

    add-int v36, v36, v15

    aget-object v35, v35, v36

    const/16 v36, 0x0

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move/from16 v37, v0

    mul-int v37, v37, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move/from16 v38, v0

    .line 972
    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v34

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 977
    .restart local v31       #urlMatcher:Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 311
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->relay:Lorg/connectbot/service/Relay;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->relay:Lorg/connectbot/service/Relay;

    invoke-virtual {v0, p1}, Lorg/connectbot/service/Relay;->setCharset(Ljava/lang/String;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->keyListener:Lorg/connectbot/service/TerminalKeyListener;

    invoke-virtual {v0, p1}, Lorg/connectbot/service/TerminalKeyListener;->setCharset(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public setColor(IIII)V
    .locals 3
    .parameter "index"
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 919
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->color:[Ljava/lang/Integer;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 920
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->color:[Ljava/lang/Integer;

    const/high16 v1, -0x100

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, p3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    .line 921
    :cond_0
    return-void
.end method

.method final setFontSize(F)V
    .locals 8
    .parameter "size"

    .prologue
    const/4 v7, 0x0

    .line 485
    float-to-double v3, p1

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    .line 511
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 489
    iput p1, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    .line 492
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 493
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lorg/connectbot/service/TerminalBridge;->charTop:I

    .line 495
    const/4 v3, 0x1

    new-array v2, v3, [F

    .line 496
    .local v2, widths:[F
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    const-string v4, "X"

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 497
    aget v3, v2, v7

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    .line 498
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    .line 501
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;

    invoke-virtual {p0, v3}, Lorg/connectbot/service/TerminalBridge;->parentChanged(Lorg/connectbot/TerminalView;)V

    .line 504
    :cond_1
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->fontSizeChangedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 507
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    iget v4, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lorg/connectbot/bean/HostBean;->setFontSize(I)V

    .line 508
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v3, v3, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget-object v4, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v3, v4}, Lorg/connectbot/util/HostDatabase;->updateFontSize(Lorg/connectbot/bean/HostBean;)Z

    .line 510
    iput-boolean v7, p0, Lorg/connectbot/service/TerminalBridge;->forcedSize:Z

    goto :goto_0

    .line 504
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/service/FontSizeChangedListener;

    .line 505
    .local v1, ofscl:Lorg/connectbot/service/FontSizeChangedListener;
    invoke-interface {v1, p1}, Lorg/connectbot/service/FontSizeChangedListener;->onFontSizeChanged(F)V

    goto :goto_1
.end method

.method public setOnDisconnectedListener(Lorg/connectbot/service/BridgeDisconnectedListener;)V
    .locals 0
    .parameter "disconnectListener"

    .prologue
    .line 403
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge;->disconnectListener:Lorg/connectbot/service/BridgeDisconnectedListener;

    .line 404
    return-void
.end method

.method public setSelectingForCopy(Z)V
    .locals 0
    .parameter "selectingForCopy"

    .prologue
    .line 465
    iput-boolean p1, p0, Lorg/connectbot/service/TerminalBridge;->selectingForCopy:Z

    .line 466
    return-void
.end method

.method protected startConnection()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 259
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v2}, Lorg/connectbot/bean/HostBean;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/connectbot/transport/TransportFactory;->getTransport(Ljava/lang/String;)Lorg/connectbot/transport/AbsTransport;

    move-result-object v2

    iput-object v2, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    .line 260
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v2, p0}, Lorg/connectbot/transport/AbsTransport;->setBridge(Lorg/connectbot/service/TerminalBridge;)V

    .line 261
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v2, v3}, Lorg/connectbot/transport/AbsTransport;->setManager(Lorg/connectbot/service/TerminalManager;)V

    .line 262
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v2, v3}, Lorg/connectbot/transport/AbsTransport;->setHost(Lorg/connectbot/bean/HostBean;)V

    .line 265
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v3}, Lorg/connectbot/bean/HostBean;->getCompression()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/connectbot/transport/AbsTransport;->setCompression(Z)V

    .line 266
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v3}, Lorg/connectbot/bean/HostBean;->getUseAuthAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/connectbot/transport/AbsTransport;->setUseAuthAgent(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->emulation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/connectbot/transport/AbsTransport;->setEmulation(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v2}, Lorg/connectbot/transport/AbsTransport;->canForwardPorts()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v2, v2, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v2, v3}, Lorg/connectbot/util/HostDatabase;->getPortForwardsForHost(Lorg/connectbot/bean/HostBean;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 274
    :cond_0
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v2, v2, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v3, 0x7f0800b8

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v6}, Lorg/connectbot/bean/HostBean;->getHostname()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v5}, Lorg/connectbot/bean/HostBean;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v6}, Lorg/connectbot/bean/HostBean;->getProtocol()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/connectbot/service/TerminalBridge$3;

    invoke-direct {v2, p0}, Lorg/connectbot/service/TerminalBridge$3;-><init>(Lorg/connectbot/service/TerminalBridge;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 281
    .local v0, connectionThread:Ljava/lang/Thread;
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 283
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 284
    return-void

    .line 270
    .end local v0           #connectionThread:Ljava/lang/Thread;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/bean/PortForwardBean;

    .line 271
    .local v1, portForward:Lorg/connectbot/bean/PortForwardBean;
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v3, v1}, Lorg/connectbot/transport/AbsTransport;->addPortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    goto :goto_0
.end method

.method public declared-synchronized tryKeyVibrate()V
    .locals 1

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v0}, Lorg/connectbot/service/TerminalManager;->tryKeyVibrate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateScrollBar()V
    .locals 0

    .prologue
    .line 770
    return-void
.end method
