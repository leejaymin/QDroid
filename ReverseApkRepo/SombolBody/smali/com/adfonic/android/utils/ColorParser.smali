.class public Lcom/adfonic/android/utils/ColorParser;
.super Ljava/lang/Object;
.source "ColorParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/res/Resources;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "res"
    .parameter "attrs"
    .parameter "namespace"
    .parameter "attributeName"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, color:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 31
    .end local v1           #color:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 14
    .restart local v1       #color:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 15
    .local v2, f:C
    const/16 v5, 0x23

    if-ne v2, v5, :cond_2

    .line 17
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, a:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    .end local v0           #a:Ljava/lang/IllegalArgumentException;
    :cond_2
    const/16 v5, 0x40

    if-ne v2, v5, :cond_0

    .line 23
    invoke-interface {p1, p2, p3, v6}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 24
    .local v3, resId:I
    if-eq v3, v6, :cond_0

    .line 25
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_0
.end method
