.class public interface abstract Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;
.super Ljava/lang/Object;


# virtual methods
.method public abstract activity()Landroid/app/Activity;
.end method

.method public abstract autoAttachUi()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;
.end method

.method public abstract globalNavigationActivityDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/MainUiTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract multitabDetails(Lcom/chillingo/crystal/utils/Reference;Ljava/util/List;Lcom/chillingo/crystal/utils/Reference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/ui/PullTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract padtabDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/MainUiTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pulltabDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/PullTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRestorable(Lcom/chillingo/crystal/ui/restorable/IRestorableUi;)V
.end method
