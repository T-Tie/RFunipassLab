; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcrsr4xh2.cpp"
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
  %s = alloca [500 x i32], align 16
  %t = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %s) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %t) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc13
  %indvars.iv27 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next28, %for.inc13 ]
  %len.0 = phi i32 [ 0, %for.cond2.preheader ], [ %len.1, %for.inc13 ]
  %exitcond.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond.not, label %for.end15, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv27
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %for.inc13, label %if.then

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %len.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %t, i64 0, i64 %idxprom10
  store i32 %2, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %len.0, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %len.1 = phi i32 [ %inc12, %if.then ], [ %len.0, %for.body4 ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  %cmp16 = icmp eq i32 %len.0, 0
  br i1 %cmp16, label %cleanup, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.end15
  %sub = add nsw i32 %len.0, -1
  %smax39 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc47
  %indvars.iv34 = phi i32 [ %sub, %for.cond19.preheader ], [ %indvars.iv.next35, %for.inc47 ]
  %i.2 = phi i32 [ 0, %for.cond19.preheader ], [ %inc48, %for.inc47 ]
  %exitcond40.not = icmp eq i32 %i.2, %smax39
  br i1 %exitcond40.not, label %for.end49, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond19
  %smax36 = call i32 @llvm.smax.i32(i32 %indvars.iv34, i32 0)
  %wide.trip.count37 = zext nneg i32 %smax36 to i64
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.backedge, %for.cond22.preheader
  %indvars.iv31 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next32, %for.cond22.backedge ]
  %exitcond38.not = icmp eq i64 %indvars.iv31, %wide.trip.count37
  br i1 %exitcond38.not, label %for.inc47, label %for.body26

for.body26:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw [500 x i32], ptr %t, i64 0, i64 %indvars.iv31
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %arrayidx30 = getelementptr inbounds nuw [500 x i32], ptr %t, i64 0, i64 %indvars.iv.next32
  %5 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %4, %5
  br i1 %cmp31, label %if.then32, label %for.cond22.backedge

for.cond22.backedge:                              ; preds = %for.body26, %if.then32
  br label %for.cond22, !llvm.loop !13

if.then32:                                        ; preds = %for.body26
  store i32 %5, ptr %arrayidx28, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.cond22.backedge

for.inc47:                                        ; preds = %for.cond22
  %inc48 = add nuw i32 %i.2, 1
  %indvars.iv.next35 = add i32 %indvars.iv34, -1
  br label %for.cond19, !llvm.loop !14

for.end49:                                        ; preds = %for.cond19
  %6 = load i32, ptr %t, align 16, !tbaa !5
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %smax45 = call i32 @llvm.smax.i32(i32 %len.0, i32 1)
  %wide.trip.count46 = zext nneg i32 %smax45 to i64
  br label %for.cond52

for.cond52:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.end49
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 1, %for.end49 ]
  %exitcond47.not = icmp eq i64 %indvars.iv41, %wide.trip.count46
  br i1 %exitcond47.not, label %cleanup, label %for.body54

for.body54:                                       ; preds = %for.cond52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 44, ptr %__c.addr.i, align 1, !tbaa !15
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %7 = load i64, ptr %gep, align 8, !tbaa !18
  %cmp.not.i = icmp eq i64 %7, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body54
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body54
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 44)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %arrayidx57 = getelementptr inbounds nuw [500 x i32], ptr %t, i64 0, i64 %indvars.iv41
  %8 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i32 noundef %8)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond52, !llvm.loop !29

cleanup:                                          ; preds = %for.cond52, %for.end15
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %t) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!15 = !{!7, !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
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
