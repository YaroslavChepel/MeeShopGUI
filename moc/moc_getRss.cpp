/****************************************************************************
** Meta object code from reading C++ file 'getRss.h'
**
** Created: Fri 7. Jul 11:22:31 2023
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../getRss.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'getRss.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_GetRss[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       1,   44, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
       8,    7,    7,    7, 0x05,
      24,    7,    7,    7, 0x05,
      41,    7,    7,    7, 0x05,

 // slots: signature, parameters, type, tag, flags
      59,    7,    7,    7, 0x08,
      83,   75,    7,    7, 0x08,

 // methods: signature, parameters, type, tag, flags
     120,  110,    7,    7, 0x02,

 // properties: name, type, flags
     148,  136, 0x0b495001,

 // properties: notify_signal_id
       1,

       0        // eod
};

static const char qt_meta_stringdata_GetRss[] = {
    "GetRss\0\0dataProcessed()\0appInfoChanged()\0"
    "processFinished()\0replyFinished()\0"
    "xmlData\0processXmlData(QByteArray)\0"
    "countries\0getRss(QString)\0QStringList\0"
    "appInfo\0"
};

const QMetaObject GetRss::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_GetRss,
      qt_meta_data_GetRss, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &GetRss::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *GetRss::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *GetRss::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_GetRss))
        return static_cast<void*>(const_cast< GetRss*>(this));
    return QObject::qt_metacast(_clname);
}

int GetRss::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: dataProcessed(); break;
        case 1: appInfoChanged(); break;
        case 2: processFinished(); break;
        case 3: replyFinished(); break;
        case 4: processXmlData((*reinterpret_cast< const QByteArray(*)>(_a[1]))); break;
        case 5: getRss((*reinterpret_cast< QString(*)>(_a[1]))); break;
        default: ;
        }
        _id -= 6;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QStringList*>(_v) = appInfoList(); break;
        }
        _id -= 1;
    } else if (_c == QMetaObject::WriteProperty) {
        _id -= 1;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 1;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void GetRss::dataProcessed()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void GetRss::appInfoChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void GetRss::processFinished()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}
QT_END_MOC_NAMESPACE
