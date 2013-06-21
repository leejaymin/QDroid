.class public final Lcom/rubycell/pianisthd/ui/a;
.super Lorg/cocos2d/e/d;


# direct methods
.method public static a(Ljava/lang/String;)Lorg/cocos2d/e/d;
    .locals 3

    new-instance v0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-direct {v0, p0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/cocos2d/e/d;->a()Lorg/cocos2d/e/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    return-object v1
.end method
