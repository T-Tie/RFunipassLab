; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjpj9nvev.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@strin = dso_local global [503 x i8] zeroinitializer, align 16
@str2 = dso_local local_unnamed_addr global [10 x i8] zeroinitializer, align 1
@jilu = dso_local local_unnamed_addr global [500 x i32] zeroinitializer, align 16
@used = dso_local local_unnamed_addr global [500 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = call i32 @getc(ptr noundef %0)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @strin, i64 noundef 500)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @strin) #8
  %conv = trunc i64 %call3 to i32
  %1 = load i32, ptr %n, align 4, !tbaa !10
  %sub = sub nsw i32 %conv, %1
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %2 = add i32 %conv, 1
  %3 = sub i32 %2, %1
  %smax63 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %4 = add i32 %smax63, 1
  %wide.trip.count64 = zext i32 %4 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %wide.trip.count58 = zext i32 %3 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end42, %entry
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.end42 ], [ 0, %entry ]
  %maxtime.0 = phi i32 [ %maxtime.0., %for.end42 ], [ 0, %entry ]
  %exitcond65 = icmp eq i64 %indvars.iv60, %wide.trip.count64
  br i1 %exitcond65, label %for.end50, label %for.cond4

for.cond4:                                        ; preds = %for.cond, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond9.preheader, label %for.body6

for.cond9.preheader:                              ; preds = %for.cond4
  %arrayidx35 = getelementptr inbounds nuw [500 x i32], ptr @jilu, i64 0, i64 %indvars.iv60
  br label %for.cond9

for.body6:                                        ; preds = %for.cond4
  %5 = add nuw nsw i64 %indvars.iv, %indvars.iv60
  %arrayidx = getelementptr inbounds nuw [503 x i8], ptr @strin, i64 0, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %arrayidx8 = getelementptr inbounds nuw [10 x i8], ptr @str2, i64 0, i64 %indvars.iv
  store i8 %6, ptr %arrayidx8, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !13

for.cond9:                                        ; preds = %for.cond9.preheader, %for.inc40
  %indvars.iv55 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next56, %for.inc40 ]
  %exitcond59 = icmp eq i64 %indvars.iv55, %wide.trip.count58
  br i1 %exitcond59, label %for.end42, label %for.body12

for.body12:                                       ; preds = %for.cond9
  %arrayidx14 = getelementptr inbounds nuw [500 x i32], ptr @used, i64 0, i64 %indvars.iv55
  %7 = load i32, ptr %arrayidx14, align 4, !tbaa !10
  %cmp15 = icmp eq i32 %7, 1
  br i1 %cmp15, label %for.inc40, label %for.cond16

for.cond16:                                       ; preds = %for.body12, %for.body18
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body18 ], [ 0, %for.body12 ]
  %pd.0 = phi i32 [ %spec.select, %for.body18 ], [ 1, %for.body12 ]
  %exitcond54.not = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond54.not, label %for.end31, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %8 = add nuw nsw i64 %indvars.iv49, %indvars.iv55
  %arrayidx21 = getelementptr inbounds nuw [503 x i8], ptr @strin, i64 0, i64 %8
  %9 = load i8, ptr %arrayidx21, align 1, !tbaa !12
  %arrayidx24 = getelementptr inbounds nuw [10 x i8], ptr @str2, i64 0, i64 %indvars.iv49
  %10 = load i8, ptr %arrayidx24, align 1, !tbaa !12
  %cmp26.not = icmp eq i8 %9, %10
  %spec.select = select i1 %cmp26.not, i32 %pd.0, i32 0
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond16, !llvm.loop !16

for.end31:                                        ; preds = %for.cond16
  %cmp32.not = icmp eq i32 %pd.0, 0
  br i1 %cmp32.not, label %for.inc40, label %if.then33

if.then33:                                        ; preds = %for.end31
  %11 = load i32, ptr %arrayidx35, align 4, !tbaa !10
  %inc36 = add nsw i32 %11, 1
  store i32 %inc36, ptr %arrayidx35, align 4, !tbaa !10
  store i32 1, ptr %arrayidx14, align 4, !tbaa !10
  br label %for.inc40

for.inc40:                                        ; preds = %for.end31, %if.then33, %for.body12
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond9, !llvm.loop !17

for.end42:                                        ; preds = %for.cond9
  %12 = load i32, ptr %arrayidx35, align 4, !tbaa !10
  %maxtime.0. = call i32 @llvm.smax.i32(i32 %maxtime.0, i32 %12)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond, !llvm.loop !18

for.end50:                                        ; preds = %for.cond
  %cmp51 = icmp eq i32 %maxtime.0, 1
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %for.end50
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end79

if.else:                                          ; preds = %for.end50
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %maxtime.0)
  %vtable.i33 = load ptr, ptr %call54, align 8, !tbaa !19
  %vbase.offset.ptr.i34 = getelementptr i8, ptr %vtable.i33, i64 -24
  %vbase.offset.i35 = load i64, ptr %vbase.offset.ptr.i34, align 8
  %add.ptr.i36 = getelementptr inbounds i8, ptr %call54, i64 %vbase.offset.i35
  %call.i37 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i36, i8 noundef signext 10)
  %call1.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call54, i8 noundef signext %call.i37)
  %call.i.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i38)
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc76, %if.else
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.inc76 ], [ 0, %if.else ]
  %13 = load i32, ptr %n, align 4, !tbaa !10
  %sub57 = sub nsw i32 %conv, %13
  %14 = sext i32 %sub57 to i64
  %cmp58.not = icmp sgt i64 %indvars.iv70, %14
  br i1 %cmp58.not, label %if.end79, label %for.body59

for.body59:                                       ; preds = %for.cond56
  %arrayidx61 = getelementptr inbounds nuw [500 x i32], ptr @jilu, i64 0, i64 %indvars.iv70
  %15 = load i32, ptr %arrayidx61, align 4, !tbaa !10
  %cmp62 = icmp eq i32 %15, %maxtime.0
  br i1 %cmp62, label %for.cond64, label %for.inc76

for.cond64:                                       ; preds = %for.body59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %16 = phi i32 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %13, %for.body59 ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %for.body59 ]
  %17 = sext i32 %16 to i64
  %cmp65 = icmp slt i64 %indvars.iv66, %17
  br i1 %cmp65, label %for.body66, label %for.end73

for.body66:                                       ; preds = %for.cond64
  %18 = add nuw nsw i64 %indvars.iv66, %indvars.iv70
  %arrayidx69 = getelementptr inbounds nuw [503 x i8], ptr @strin, i64 0, i64 %18
  %19 = load i8, ptr %arrayidx69, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %19, ptr %__c.addr.i, align 1, !tbaa !12
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %20 = load i64, ptr %gep, align 8, !tbaa !21
  %cmp.not.i = icmp eq i64 %20, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body66
  %call1.i31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body66
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %19)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !10
  br label %for.cond64, !llvm.loop !31

for.end73:                                        ; preds = %for.cond64
  %vtable.i40 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %vbase.offset.ptr.i41 = getelementptr i8, ptr %vtable.i40, i64 -24
  %vbase.offset.i42 = load i64, ptr %vbase.offset.ptr.i41, align 8
  %add.ptr.i43 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i42
  %call.i44 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i43, i8 noundef signext 10)
  %call1.i45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i44)
  %call.i.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i45)
  br label %for.inc76

for.inc76:                                        ; preds = %for.body59, %for.end73
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond56, !llvm.loop !32

if.end79:                                         ; preds = %for.cond56, %if.then52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !9, i64 0}
!21 = !{!22, !23, i64 16}
!22 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !26, i64 40, !27, i64 48, !8, i64 64, !11, i64 192, !28, i64 200, !29, i64 208}
!23 = !{!"long", !8, i64 0}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!26 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!27 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !23, i64 8}
!28 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!29 = !{!"_ZTSSt6locale", !30, i64 0}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!31 = distinct !{!31, !14, !15}
!32 = distinct !{!32, !14, !15}
