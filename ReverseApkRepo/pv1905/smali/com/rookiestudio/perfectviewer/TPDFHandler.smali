.class public Lcom/rookiestudio/perfectviewer/TPDFHandler;
.super Ljava/lang/Object;
.source "TPDFHandler.java"


# instance fields
.field private PDFCloseFileMethod:Ljava/lang/reflect/Method;

.field private PDFDrawPageMethod:Ljava/lang/reflect/Method;

.field private PDFGotoPageMethod:Ljava/lang/reflect/Method;

.field public PDFObject:Ljava/lang/Object;

.field private PDFOpenFileMethod:Ljava/lang/reflect/Method;

.field private PDFPageHeightMethod:Ljava/lang/reflect/Method;

.field private PDFPageWidthMethod:Ljava/lang/reflect/Method;

.field public TPDFHandlerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter "Obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->TPDFHandlerClass:Ljava/lang/Class;

    .line 11
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFObject:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFOpenFileMethod:Ljava/lang/reflect/Method;

    .line 13
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFGotoPageMethod:Ljava/lang/reflect/Method;

    .line 14
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageWidthMethod:Ljava/lang/reflect/Method;

    .line 15
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageHeightMethod:Ljava/lang/reflect/Method;

    .line 16
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFCloseFileMethod:Ljava/lang/reflect/Method;

    .line 17
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFDrawPageMethod:Ljava/lang/reflect/Method;

    .line 20
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFObject:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->TPDFHandlerClass:Ljava/lang/Class;

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->TPDFHandlerClass:Ljava/lang/Class;

    const-string v1, "PluginOpenFile"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFOpenFileMethod:Ljava/lang/reflect/Method;

    .line 24
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->TPDFHandlerClass:Ljava/lang/Class;

    const-string v1, "PluginGotoPage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFGotoPageMethod:Ljava/lang/reflect/Method;

    .line 25
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->TPDFHandlerClass:Ljava/lang/Class;

    const-string v1, "PluginPageWidth"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageWidthMethod:Ljava/lang/reflect/Method;

    .line 26
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->TPDFHandlerClass:Ljava/lang/Class;

    const-string v1, "PluginPageHeight"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageHeightMethod:Ljava/lang/reflect/Method;

    .line 27
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->TPDFHandlerClass:Ljava/lang/Class;

    const-string v1, "PluginCloseFile"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFCloseFileMethod:Ljava/lang/reflect/Method;

    .line 28
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->TPDFHandlerClass:Ljava/lang/Class;

    const-string v1, "PluginDrawPage"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFDrawPageMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0

    .line 29
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public PDFCloseFile()V
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFCloseFileMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    goto :goto_0

    .line 84
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public PDFDrawPage(III)V
    .locals 5
    .parameter "bitmap"
    .parameter "pageW"
    .parameter "pageH"

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFDrawPageMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    goto :goto_0

    .line 94
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public PDFGotoPage(I)V
    .locals 5
    .parameter "PageNum"

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFGotoPageMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    goto :goto_0

    .line 50
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public PDFOpenFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "filename"
    .parameter "password"

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, ret:I
    :try_start_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFOpenFileMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 43
    :goto_0
    return v0

    .line 41
    :catch_0
    move-exception v1

    goto :goto_0

    .line 40
    :catch_1
    move-exception v1

    goto :goto_0

    .line 39
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public PDFPageHeight()F
    .locals 4

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, ret:F
    :try_start_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageHeightMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 77
    :goto_0
    return v0

    .line 75
    :catch_0
    move-exception v1

    goto :goto_0

    .line 74
    :catch_1
    move-exception v1

    goto :goto_0

    .line 73
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public PDFPageWidth()F
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, ret:F
    :try_start_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageWidthMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0

    .line 62
    :catch_1
    move-exception v1

    goto :goto_0

    .line 61
    :catch_2
    move-exception v1

    goto :goto_0
.end method
