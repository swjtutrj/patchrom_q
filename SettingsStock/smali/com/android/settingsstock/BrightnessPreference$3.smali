.class Lcom/android/settingsstock/BrightnessPreference$3;
.super Landroid/database/ContentObserver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/BrightnessPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/BrightnessPreference$3;->this$0:Lcom/android/settingsstock/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference$3;->this$0:Lcom/android/settingsstock/BrightnessPreference;

    #calls: Lcom/android/settingsstock/BrightnessPreference;->onBrightnessEcoModeChanged()V
    invoke-static {v0}, Lcom/android/settingsstock/BrightnessPreference;->access$200(Lcom/android/settingsstock/BrightnessPreference;)V

    return-void
.end method
