; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa4ymkcci.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %n, i64 noundef 50)
  call void @_Z1fPc(ptr noundef nonnull %n)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z1fPc(ptr noundef readonly captures(none) %p) local_unnamed_addr #2 {
entry:
  %__c.addr.i8 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %.pre = load i8, ptr %p, align 1, !tbaa !5
  switch i8 %.pre, label %if.then3 [
    i8 0, label %if.end12
    i8 32, label %if.else.peel
  ]

if.else.peel:                                     ; preds = %entry
  %add.ptr.peel = getelementptr inbounds nuw i8, ptr %p, i64 1
  %0 = load i8, ptr %add.ptr.peel, align 1, !tbaa !5
  %cmp5.not.peel = icmp eq i8 %0, 32
  br i1 %cmp5.not.peel, label %tailrecurse, label %if.then6

tailrecurse:                                      ; preds = %if.else.peel, %tailrecurse
  %p.tr = phi ptr [ %add.ptr, %tailrecurse ], [ %add.ptr.peel, %if.else.peel ]
  %add.ptr = getelementptr inbounds nuw i8, ptr %p.tr, i64 1
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %cmp5.not = icmp eq i8 %1, 32
  br i1 %cmp5.not, label %tailrecurse, label %if.then6, !llvm.loop !8

if.then3:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %.pre, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !10
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %2 = load i64, ptr %_M_width.i.i, align 8, !tbaa !12
  %cmp.not.i = icmp eq i64 %2, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then3
  %call2.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.pre)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p, i64 1
  br label %if.end12.sink.split

if.then6:                                         ; preds = %tailrecurse, %if.else.peel
  %add.ptr.lcssa = phi ptr [ %add.ptr.peel, %if.else.peel ], [ %add.ptr, %tailrecurse ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i8)
  store i8 32, ptr %__c.addr.i8, align 1, !tbaa !5
  %vtable.i9 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !10
  %vbase.offset.ptr.i10 = getelementptr i8, ptr %vtable.i9, i64 -24
  %vbase.offset.i11 = load i64, ptr %vbase.offset.ptr.i10, align 8
  %add.ptr.i12 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i11
  %_M_width.i.i13 = getelementptr inbounds nuw i8, ptr %add.ptr.i12, i64 16
  %3 = load i64, ptr %_M_width.i.i13, align 8, !tbaa !12
  %cmp.not.i14 = icmp eq i64 %3, 0
  br i1 %cmp.not.i14, label %if.end.i18, label %if.then.i15

if.then.i15:                                      ; preds = %if.then6
  %call1.i16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i8, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

if.end.i18:                                       ; preds = %if.then6
  %call2.i19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %if.then.i15, %if.end.i18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i8)
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %add.ptr.lcssa.sink = phi ptr [ %add.ptr.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ], [ %incdec.ptr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  call void @_Z1fPc(ptr noundef nonnull %add.ptr.lcssa.sink)
  br label %if.end12

if.end12:                                         ; preds = %entry, %if.end12.sink.split
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.peeled.count", i32 1}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !7, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !6, i64 64, !20, i64 192, !21, i64 200, !22, i64 208}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"int", !6, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!22 = !{!"_ZTSSt6locale", !23, i64 0}
!23 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
