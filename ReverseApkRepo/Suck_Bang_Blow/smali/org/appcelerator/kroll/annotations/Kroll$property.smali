.class public interface abstract annotation Lorg/appcelerator/kroll/annotations/Kroll$property;
.super Ljava/lang/Object;
.source "Kroll.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/appcelerator/kroll/annotations/Kroll$property;
        get = true
        javascriptConverter = Lorg/appcelerator/kroll/KrollConverter;
        name = "__default_name__"
        nativeConverter = Lorg/appcelerator/kroll/KrollConverter;
        set = true
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/annotations/Kroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "property"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract get()Z
.end method

.method public abstract javascriptConverter()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollJavascriptConverter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract nativeConverter()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollNativeConverter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract set()Z
.end method
