; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcxlvgumc.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %str = alloca [20001 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %str) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3.outer

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.outer, %for.cond.cleanup9
  %i2.0 = phi i32 [ %3, %for.cond.cleanup9 ], [ %i2.0.ph, %for.cond3.outer ]
  %cmp4 = icmp slt i32 %i2.0, %sub
  br i1 %cmp4, label %for.cond7.preheader, label %for.cond.cleanup5

for.cond7.preheader:                              ; preds = %for.cond3
  %idxprom13 = sext i32 %i2.0 to i64
  %arrayidx14 = getelementptr inbounds [20001 x i32], ptr %str, i64 0, i64 %idxprom13
  %smax = call i32 @llvm.smax.i32(i32 %i2.0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond7

for.cond.cleanup5:                                ; preds = %for.cond3
  %2 = load i32, ptr %str, align 16, !tbaa !5
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %2)
  br label %for.cond40

for.cond7:                                        ; preds = %for.body10, %for.cond7.preheader
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body10 ], [ 0, %for.cond7.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup9, label %for.body10

for.cond.cleanup9:                                ; preds = %for.cond7
  %3 = add nsw i32 %i2.0, 1
  br label %for.cond3, !llvm.loop !12

for.body10:                                       ; preds = %for.cond7
  %arrayidx12 = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %indvars.iv25
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %4, %5
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br i1 %cmp15, label %for.cond16.preheader, label %for.cond7, !llvm.loop !13

for.cond16.preheader:                             ; preds = %for.body10
  %6 = xor i32 %num.0.ph, -1
  %sub18 = add i32 %0, %6
  %7 = sext i32 %sub18 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.body21
  %indvars.iv28 = phi i64 [ %idxprom13, %for.cond16.preheader ], [ %indvars.iv.next29, %for.body21 ]
  %cmp19 = icmp slt i64 %indvars.iv28, %7
  br i1 %cmp19, label %for.body21, label %for.cond.cleanup20

for.cond.cleanup20:                               ; preds = %for.cond16
  %inc29 = add nuw nsw i32 %num.0.ph, 1
  br label %for.cond3.outer, !llvm.loop !12

for.cond3.outer:                                  ; preds = %for.cond, %for.cond.cleanup20
  %num.0.ph = phi i32 [ %inc29, %for.cond.cleanup20 ], [ 0, %for.cond ]
  %i2.0.ph = phi i32 [ %i2.0, %for.cond.cleanup20 ], [ 1, %for.cond ]
  %sub = sub nsw i32 %0, %num.0.ph
  br label %for.cond3

for.body21:                                       ; preds = %for.cond16
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, 1
  %arrayidx23 = getelementptr inbounds [20001 x i32], ptr %str, i64 0, i64 %indvars.iv.next29
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %arrayidx25 = getelementptr inbounds [20001 x i32], ptr %str, i64 0, i64 %indvars.iv28
  store i32 %8, ptr %arrayidx25, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.cond40:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond.cleanup5
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 1, %for.cond.cleanup5 ]
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %sub41 = sub nsw i32 %9, %num.0.ph
  %10 = sext i32 %sub41 to i64
  %cmp42 = icmp slt i64 %indvars.iv31, %10
  br i1 %cmp42, label %for.body44, label %for.cond.cleanup43

for.cond.cleanup43:                               ; preds = %for.cond40
  %vtable.i18 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i19 = getelementptr i8, ptr %vtable.i18, i64 -24
  %vbase.offset.i20 = load i64, ptr %vbase.offset.ptr.i19, align 8
  %add.ptr.i21 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i20
  %call.i22 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i21, i8 noundef signext 10)
  %call1.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i22)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i23)
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body44:                                       ; preds = %for.cond40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !17
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %11 = load i64, ptr %gep, align 8, !tbaa !18
  %cmp.not.i = icmp eq i64 %11, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body44
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body44
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %arrayidx47 = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %indvars.iv31
  %12 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i32 noundef %12)
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond40, !llvm.loop !29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !20, i64 16}
!19 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !25, i64 48, !7, i64 64, !6, i64 192, !26, i64 200, !27, i64 208}
!20 = !{!"long", !7, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !20, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!29 = distinct !{!29, !10, !11}
