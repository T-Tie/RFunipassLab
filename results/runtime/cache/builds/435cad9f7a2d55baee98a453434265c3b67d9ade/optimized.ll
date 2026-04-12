; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqxreubj9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12compose_wordPA25_ci(ptr noundef %word, i32 noundef %number) local_unnamed_addr #0 {
entry:
  %count = alloca i32, align 4
  %len = alloca i32, align 4
  %first = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %count) #7
  store i32 0, ptr %count, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %len) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %first) #7
  store i32 0, ptr %first, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #7
  %call = call i64 @strlen(ptr nofree noundef readonly %word) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end19, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %number
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %for.body
  %1 = load i32, ptr %len, align 4, !tbaa !5
  %2 = load i32, ptr %count, align 4, !tbaa !5
  %add = add nsw i32 %1, %2
  %cmp1 = icmp slt i32 %add, 80
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %first, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %count, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %while.body
  store i32 1, ptr %first, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [25 x i8], ptr %word, i64 %idxprom
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arrayidx3)
  %5 = load i32, ptr %count, align 4, !tbaa !5
  %add6 = add nsw i32 %5, %1
  store i32 %add6, ptr %count, align 4, !tbaa !5
  %inc7 = add nsw i32 %4, 1
  store i32 %inc7, ptr %i, align 4, !tbaa !5
  %cmp8 = icmp sge i32 %inc7, %number
  br i1 %cmp8, label %while.end, label %if.end10

if.end10:                                         ; preds = %if.end
  %idxprom11 = sext i32 %inc7 to i64
  %arrayidx12 = getelementptr inbounds [25 x i8], ptr %word, i64 %idxprom11
  %call14 = call i64 @strlen(ptr noundef %arrayidx12) #9
  %conv15 = trunc i64 %call14 to i32
  store i32 %conv15, ptr %len, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %if.end, %while.cond
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %count, align 4, !tbaa !5
  store i32 0, ptr %first, align 4, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %6, %number
  br i1 %cmp17, label %for.end, label %if.end19

if.end19:                                         ; preds = %while.end
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %while.end, %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %first) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %len) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %count) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %number = alloca i32, align 4
  %i = alloca i32, align 4
  %word = alloca [1000 x [25 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %number) #7
  store i32 0, ptr %number, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %number)
  %call1 = call i32 @getchar()
  call void @llvm.lifetime.start.p0(i64 noundef 25000, ptr noundef nonnull align 16 captures(none) dereferenceable(25000) %word) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 captures(none) dereferenceable(25000) %word, i8 noundef 0, i64 noundef 25000, i1 noundef false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %number, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x [25 x i8]], ptr %word, i64 0, i64 %idxprom
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef nonnull %arrayidx)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @_Z12compose_wordPA25_ci(ptr noundef nonnull align 16 dereferenceable(25000) %word, i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 noundef 25000, ptr noundef %word) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %number) #10
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind }
attributes #8 = { nosync nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
