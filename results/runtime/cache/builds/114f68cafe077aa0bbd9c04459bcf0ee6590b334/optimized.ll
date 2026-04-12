; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_0i0bqcz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@s = dso_local global [110 x i8] zeroinitializer, align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7operatev() local_unnamed_addr #0 {
entry:
  %__c.addr.i12 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @s) #6
  %0 = and i64 %call, 4294967295
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.cleanup5, %entry
  %indvars.iv.ph = phi i64 [ %indvars.iv.next, %for.cond.cleanup5 ], [ %0, %entry ]
  %pre.0.ph.in = phi i64 [ %indvars.iv.next, %for.cond.cleanup5 ], [ %call, %entry ]
  %pre.0.ph = trunc i64 %pre.0.ph.in to i32
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.cond.outer ]
  %1 = trunc nuw i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %pre.0.ph, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond14

for.body:                                         ; preds = %for.cond
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %idxprom = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds nuw [110 x i8], ptr @s, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp2 = icmp eq i8 %2, 32
  br i1 %cmp2, label %for.cond3, label %for.cond, !llvm.loop !8

for.cond3:                                        ; preds = %for.body, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %indvars.iv, %for.body ]
  %3 = trunc nuw i64 %indvars.iv26 to i32
  %cmp4 = icmp sgt i32 %pre.0.ph, %3
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5

for.cond.cleanup5:                                ; preds = %for.cond3
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.cond.outer, !llvm.loop !8

for.body6:                                        ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds nuw [110 x i8], ptr @s, i64 0, i64 %indvars.iv26
  %4 = load i8, ptr %arrayidx8, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %4, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %5 = load i64, ptr %gep, align 8, !tbaa !13
  %cmp.not.i = icmp eq i64 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body6
  %call1.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body6
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %4)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond3, !llvm.loop !25

for.cond14:                                       ; preds = %for.cond14.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit24
  %indvars.iv30 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit24 ]
  %exitcond.not = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup16, label %for.body17

for.cond.cleanup16:                               ; preds = %for.cond14
  ret void

for.body17:                                       ; preds = %for.cond14
  %arrayidx19 = getelementptr inbounds nuw [110 x i8], ptr @s, i64 0, i64 %indvars.iv30
  %6 = load i8, ptr %arrayidx19, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i12)
  store i8 %6, ptr %__c.addr.i12, align 1, !tbaa !5
  %vtable.i13 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i14 = getelementptr i8, ptr %vtable.i13, i64 -24
  %vbase.offset.i15 = load i64, ptr %vbase.offset.ptr.i14, align 8
  %gep25 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i15
  %7 = load i64, ptr %gep25, align 8, !tbaa !13
  %cmp.not.i18 = icmp eq i64 %7, 0
  br i1 %cmp.not.i18, label %if.end.i22, label %if.then.i19

if.then.i19:                                      ; preds = %for.body17
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i12, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit24

if.end.i22:                                       ; preds = %for.body17
  %call2.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %6)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit24

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit24: ; preds = %if.then.i19, %if.end.i22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i12)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond14, !llvm.loop !26
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @s, i64 noundef 110)
  tail call void @_Z7operatev()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !15, i64 16}
!14 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !18, i64 40, !20, i64 48, !6, i64 64, !21, i64 192, !22, i64 200, !23, i64 208}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !15, i64 8}
!21 = !{!"int", !6, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!23 = !{!"_ZTSSt6locale", !24, i64 0}
!24 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!25 = distinct !{!25, !9, !10}
!26 = distinct !{!26, !9, !10}
