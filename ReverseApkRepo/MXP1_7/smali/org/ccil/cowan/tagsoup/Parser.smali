.class public Lorg/ccil/cowan/tagsoup/Parser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getContentHandler()Lorg/xml/sax/ContentHandler;
.end method

.method public native getDTDHandler()Lorg/xml/sax/DTDHandler;
.end method

.method public native getEntityResolver()Lorg/xml/sax/EntityResolver;
.end method

.method public native getErrorHandler()Lorg/xml/sax/ErrorHandler;
.end method

.method public native getFeature(Ljava/lang/String;)Z
.end method

.method public native getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public native parse(Ljava/lang/String;)V
.end method

.method public native parse(Lorg/xml/sax/InputSource;)V
.end method

.method public native setContentHandler(Lorg/xml/sax/ContentHandler;)V
.end method

.method public native setDTDHandler(Lorg/xml/sax/DTDHandler;)V
.end method

.method public native setEntityResolver(Lorg/xml/sax/EntityResolver;)V
.end method

.method public native setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
.end method

.method public native setFeature(Ljava/lang/String;Z)V
.end method

.method public native setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method
