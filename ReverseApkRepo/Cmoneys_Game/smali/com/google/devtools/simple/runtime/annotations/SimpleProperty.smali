.class public interface abstract annotation Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
.super Ljava/lang/Object;
.source "SimpleProperty.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->UNSET:Lcom/google/devtools/simple/common/PropertyCategory;
        description = ""
        userVisible = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract category()Lcom/google/devtools/simple/common/PropertyCategory;
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract userVisible()Z
.end method
