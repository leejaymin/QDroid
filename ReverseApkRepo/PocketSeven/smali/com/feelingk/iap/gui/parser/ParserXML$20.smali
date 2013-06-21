.class Lcom/feelingk/iap/gui/parser/ParserXML$20;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$20;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 3930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 3933
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$20;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$20(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    const-string v1, "\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488"

    const-string v2, "<\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4>\n\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774\ub780,\n  \uc0c1\ud488 \uad6c\ub9e4 \uc2dc 1\ub144 \ub3d9\uc548 \ub9e4\uc6d4 \ucd08 \uc790\ub3d9 \uacb0\uc81c \ub418\uc5b4 \ud3b8\ub9ac\ud558\uac8c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\ub294 \uc0c1\ud488\uc785\ub2c8\ub2e4.\n\n- \uc774\uc6a9\n1. \uc0c1\ud488 \uc774\uc6a9\uae30\uac04\uc740 \ub9e4\uc6d4 1\uc77c \uc624\uc804 00\uc2dc 00\ubd84\ubd80\ud130 \ub9e4\uc6d4 \ub9d0\uc77c \uc624\ud6c4 11\uc2dc 59\ubd84 \uae4c\uc9c0 \uc785\ub2c8\ub2e4.\n2. \ub9cc\ub8cc\uae30\uac04\uc740 \ucd5c\ub300 1\ub144\uc774\ubbc0\ub85c \ucd94\ud6c4 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \ubd84\uaed8\uc11c\ub294 \uc7ac \uad6c\ub9e4\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n3. \ud55c \uc5b4\ud50c \ub2f9 2\uac1c \uc774\uc0c1\uc758 \uc6d4\ubcc4 \uc790\ub3d9 \uacb0\uc81c \uc0c1\ud488 \uad6c\uc785\uc740 \ubd88\uac00\ud569\ub2c8\ub2e4.\n4. \uacf5\uacf5\uae30\uad00 \ubc0f \ub2e8\uccb4, \ud2b9\uc218\uac1c\uc778, \ud2b9\uc218\uae30\uad00 \uba85\uc758\uc758 \ub2e8\ub9d0\uc740 \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc774\uc6a9\uc774 \ubd88\uac00\ub2a5 \ud569\ub2c8\ub2e4.\r\n\n\n- \uacb0\uc81c\n1. \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uad6c\uc785 \uc2dc \uc989\uc2dc \uacb0\uc81c\ub418\uba70 \uc775\uc6d4\uc5d0 \uccad\uad6c\ub429\ub2c8\ub2e4.\n2. \uad6c\uc785 \uccab \ub2ec\uc740 \uc0c1\ud488 \uad6c\uc785 \uc2dc\uc810\ubd80\ud130 \ub2f9\uc6d4 \ub9d0 \uc77c\uae4c\uc9c0 \uc77c\ud560 \uacfc\uae08 \ubc0f \uccad\uad6c\ub418\uba70 \ub2e4\uc74c \ub2ec\ubd80\ud130\ub294 \ub9e4\uc6d4 1\uc77c\uc5d0 \uc790\ub3d9 \uc5f0\uc7a5 \ubc0f \uacb0\uc81c\uac00 \uc9c4\ud589\ub429\ub2c8\ub2e4.\n\n\n- \ud574\uc9c0\n1. \uc911\ub3c4 \ud574\uc9c0\uac00 \uac00\ub2a5\ud558\uba70 \ub2e4\uc74c \ub2ec 1\uc77c\uc774 \ub418\uae30 \uc804\uae4c\uc9c0 \ud574\uc9c0\uac00 \uac00\ub2a5\ud569\ub2c8\ub2e4.\n2. \uc911\ub3c4 \ud574\uc9c0 \uc2dc \ud574\ub2f9 \uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud558\uba70 \ucd94\ud6c4 \uacb0\uc81c\uac00 \ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n3. \uc911\ub3c4\ud574\uc9c0 \ud6c4 \ub2f9\uc6d4\uc5d0 \ub3d9\uc77c \uc0c1\ud488\uc744 \uc7ac \uad6c\ub9e4 \ud560 \uacbd\uc6b0 \uac00\uc785\ub9cc \ucc98\ub9ac\ub418\uba70 \uc775\uc6d4 1\uc77c\uc5d0 \uc815\uc0c1\uacb0\uc81c \ub429\ub2c8\ub2e4. \n\n\n- \ud574\uc9c0 \uc808\ucc28\r\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \ud574\uc9c0\ub294 T store \ub9c8\uc774 \ud398\uc774\uc9c0\uc758 \uc0c1\ud488 \ub0b4 \uad6c\ub9e4\ub0b4\uc5ed\uc774\ub098 \ud574\ub2f9 App. \ub0b4\uc5d0\uc11c \uac00\ub2a5\ud569\ub2c8\ub2e4.\n\n- \uc8fc\uc758\uc0ac\ud56d\n1. \uc544\ub798\uc640 \uac19\uc740 \uc0c1\ud669\uc5d0\uc11c \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774 \uc790\ub3d9 \ud574\uc9c0 \ub420 \uc218 \uc788\uc73c\ub2c8 \ucc38\uace0\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n- T store \ud68c\uc6d0 \ud0c8\ud1f4\n- SKT \uc774\ub3d9\ud1b5\uc2e0 \uc11c\ube44\uc2a4 \ud574\uc9c0\n- \ubc88\ud638 \uc774\ub3d9\n- \uba85\uc758 \ubcc0\uacbd\n- \uae30\uae30\ubcc0\uacbd\n-  Appl.\uc9c0\uc6d0 \ubc0f \ub3d9\uc77c\ud55c AID\uc0c1\ud488\uc77c \uacbd\uc6b0\n- \uc5b4\ud50c \uc0ad\uc81c\n\n\n\ud574\ub2f9 \uc0ac\uc720\uc5d0 \ub300\ud574\uc11c\ub294 SK\ud50c\ub798\ub2db\uc758 \ucc45\uc784\uc774 \uc5c6\uc74c\uc744 \ubbf8\ub9ac \uc54c\ub9bd\ub2c8\ub2e4.\n\n\uac10\uc0ac\ud569\ub2c8\ub2e4.\n"

    invoke-interface {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onAutoPurchaseInfoClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 3934
    return-void
.end method
