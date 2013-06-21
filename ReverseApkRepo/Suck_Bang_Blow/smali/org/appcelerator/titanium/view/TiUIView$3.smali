.class Lorg/appcelerator/titanium/view/TiUIView$3;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$3;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const-string v3, "click"

    .line 804
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 805
    sparse-switch p2, :sswitch_data_0

    .line 814
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 808
    :sswitch_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$3;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "click"

    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$3;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "click"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move v0, v2

    .line 810
    goto :goto_0

    .line 805
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
