.class final Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$PrxmFilter;
.super Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrxmFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$PrxmFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
